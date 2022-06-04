import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:people_index/core/application/di/injection_container.dart';
import 'package:people_index/core/presentation/hooks/bloc.dart';
import 'package:people_index/core/presentation/widgets/error.dart';
import 'package:people_index/core/presentation/widgets/loading.dart';
import 'package:people_index/features/images/presentation/widgets/person_images.dart';
import 'package:people_index/features/people/presentation/bloc/person_details/person_details_cubit.dart';
import 'package:people_index/features/people/presentation/bloc/person_details/person_details_state.dart';
import 'package:people_index/features/people/presentation/widgets/person_details.dart';

class PersonDetailsPage extends HookWidget {
  const PersonDetailsPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    final cubit = useBloc<PersonDetailsCubit, PersonDetailsState>(
      () => getIt<PersonDetailsCubit>()..getPersonDetails(id: id),
    );

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            body: CustomScrollView(
              physics: const ClampingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.black,
                  elevation: 0,
                  floating: true,
                  pinned: true,
                  leading: BackButton(
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: BlocBuilder<PersonDetailsCubit, PersonDetailsState>(
                    bloc: cubit,
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () => const LoadingIndicator(),
                        loadedPersonDetails: (person) => PersonDetails(
                          person: person,
                          imageHeight: constraints.maxHeight * 0.3,
                        ),
                        error: (message) => ErrorMessage(message: message),
                        orElse: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: PersonImages(
                      id: id,
                      height: constraints.maxHeight * 0.4,
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
