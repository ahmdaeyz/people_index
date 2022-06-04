import 'package:flutter/material.dart';
import 'package:people_index/core/presentation/widgets/cached_image.dart';
import 'package:people_index/features/people/domain/entities/person.dart';
import 'package:people_index/l10n/l10n.dart';
import 'package:readmore/readmore.dart';

class PersonDetails extends StatelessWidget {
  const PersonDetails({
    super.key,
    required this.person,
    required this.imageHeight,
  });

  final Person person;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: 'base${person.imageUrl}',
          child: CachedImage(
            imageUrl: person.imageUrl,
            height: imageHeight,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                person.name,
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(
                height: 16,
              ),
              if ((person.biography ?? '').trim().isEmpty)
                Text(
                  context.l10n.noBiographyInLanguage,
                  style: Theme.of(context).textTheme.bodyText1,
                )
              else
                ReadMoreText(
                  person.biography ?? '',
                  moreStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                  lessStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                  style: Theme.of(context).textTheme.bodyText2,
                ),
            ],
          ),
        )
      ],
    );
  }
}
