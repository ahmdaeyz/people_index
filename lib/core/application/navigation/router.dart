import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:people_index/core/application/navigation/routes.dart';
import 'package:people_index/features/images/domain/entities/person_image.dart';
import 'package:people_index/features/images/presentation/pages/image_viewer_page.dart';
import 'package:people_index/features/people/presentation/pages/people_page.dart';
import 'package:people_index/features/people/presentation/pages/person_details_page.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: kRootRoute,
      builder: (BuildContext context, GoRouterState state) =>
          const PeoplePage(),
    ),
    GoRoute(
      path: kPersonDetailsBaseRoute,
      builder: (BuildContext context, GoRouterState state) {
        final id = int.tryParse(state.params['id'].toString());
        return PersonDetailsPage(id: id ?? -1);
      },
    ),
    GoRoute(
      path: kImageViewerRoute,
      builder: (BuildContext context, GoRouterState state) =>
          ImageViewerPage(image: (state.extra as PersonImage?)!),
    )
  ],
);
