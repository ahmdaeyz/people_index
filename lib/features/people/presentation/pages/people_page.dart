import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/presentation/hooks/bloc.dart';
import 'package:people_index/core/presentation/utils/snackbar.dart';
import 'package:people_index/core/presentation/widgets/change_language_button.dart';
import 'package:people_index/core/presentation/widgets/error.dart';
import 'package:people_index/core/presentation/widgets/loading.dart';
import 'package:people_index/features/people/presentation/bloc/popular_people/popular_people_cubit.dart';
import 'package:people_index/features/people/presentation/bloc/popular_people/popular_people_state.dart';
import 'package:people_index/features/people/presentation/widgets/pagination_progress_indicator.dart';
import 'package:people_index/features/people/presentation/widgets/person_tile.dart';

class PeoplePage extends HookWidget {
  const PeoplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<PopularPeopleCubit, PopularPeopleState>(
      () => getIt<PopularPeopleCubit>()..getPopularPeople(),
    );
    final scrollController = useScrollController();
    scrollControllerListenerHook(scrollController, cubit);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: [
              ChangeLanguageButton(
                onLanguageChanged: () async {
                  await cubit.getPopularPeople();
                },
              )
            ],
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                children: [
                  BlocConsumer<PopularPeopleCubit, PopularPeopleState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        actionError: (message) =>
                            showSnackBar(message, context),
                        orElse: () {},
                      );
                    },
                    bloc: cubit,
                    buildWhen: (previous, current) =>
                        current is Loading ||
                        current is Error ||
                        current is LoadedPopularPeople,
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => const LoadingIndicator(),
                        loadedPopularPeople: (items) => SizedBox(
                          height: constraints.maxHeight,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.separated(
                            primary: false,
                            controller: scrollController,
                            itemCount: items.length + 1,
                            itemBuilder: (context, index) {
                              if (items.length == index) {
                                return PaginationProgressIndicator(
                                  cubit: cubit,
                                );
                              }
                              return PersonTile(
                                person: items[index],
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 10,
                            ),
                          ),
                        ),
                        error: (message) => ErrorMessage(message: message),
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void scrollControllerListenerHook(
      ScrollController scrollController, PopularPeopleCubit cubit) {
    useEffect(
      () {
        void listener() {
          if (scrollController.position.pixels >=
                  scrollController.position.maxScrollExtent &&
              cubit.canLoadMore) {
            cubit.getMorePopularPeople();
          }
        }

        scrollController.addListener(listener);
        return () {
          scrollController.removeListener(listener);
        };
      },
      [
        scrollController,
      ],
    );
  }
}
