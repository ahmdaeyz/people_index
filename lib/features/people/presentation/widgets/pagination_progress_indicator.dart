import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:people_index/features/people/presentation/bloc/popular_people/popular_people_cubit.dart';
import 'package:people_index/features/people/presentation/bloc/popular_people/popular_people_state.dart';

class PaginationProgressIndicator extends StatelessWidget {
  const PaginationProgressIndicator({
    super.key,
    required this.cubit,
  });

  final PopularPeopleCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<PopularPeopleCubit, PopularPeopleState>(
          bloc: cubit,
          builder: (context, state) => (state is Paginating)
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : const SizedBox.shrink(),
        )
      ],
    );
  }
}
