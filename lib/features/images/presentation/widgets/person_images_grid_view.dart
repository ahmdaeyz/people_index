import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:people_index/core/application/navigation/routes.dart';
import 'package:people_index/core/presentation/widgets/cached_image.dart';
import 'package:people_index/features/images/domain/entities/person_image.dart';

class PersonImagesGridView extends StatelessWidget {
  const PersonImagesGridView({
    super.key,
    required this.images,
  });

  final List<PersonImage> images;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: images.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          context.push(
            kImageViewerRoute,
            extra: images[index],
          );
        },
        child: Hero(
          tag: images[index].imageUrl,
          child: CachedImage(
            imageUrl: images[index].imageUrl,
            height: 400,
            width: MediaQuery.of(context).size.width / 2,
          ),
        ),
      ),
    );
  }
}
