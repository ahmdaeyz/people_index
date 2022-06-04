import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:people_index/core/application/navigation/routes.dart';
import 'package:people_index/core/presentation/widgets/cached_image.dart';
import 'package:people_index/features/people/domain/entities/person.dart';

class PersonTile extends StatelessWidget {
  const PersonTile({
    super.key,
    required this.person,
  });

  final Person person;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.push('$kPersonDetailsRoute/${person.id}');
      },
      leading: Hero(
        tag: 'base${person.imageUrl}',
        child: CachedImage(
          imageUrl: person.imageUrl,
          height: 300,
          width: 100,
        ),
      ),
      title: Text(person.name),
      subtitle: Text(person.popularity.toString()),
    );
  }
}
