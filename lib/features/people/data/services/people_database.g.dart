// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class PersonModel extends DataClass implements Insertable<PersonModel> {
  final int id;
  final double popularity;
  final String name;
  final String imageUrl;
  final String? biography;
  final String? knownFor;
  PersonModel(
      {required this.id,
      required this.popularity,
      required this.name,
      required this.imageUrl,
      this.biography,
      this.knownFor});
  factory PersonModel.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PersonModel(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      popularity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}popularity'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      imageUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}image_url'])!,
      biography: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}biography']),
      knownFor: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}known_for']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['popularity'] = Variable<double>(popularity);
    map['name'] = Variable<String>(name);
    map['image_url'] = Variable<String>(imageUrl);
    if (!nullToAbsent || biography != null) {
      map['biography'] = Variable<String?>(biography);
    }
    if (!nullToAbsent || knownFor != null) {
      map['known_for'] = Variable<String?>(knownFor);
    }
    return map;
  }

  PeopleCompanion toCompanion(bool nullToAbsent) {
    return PeopleCompanion(
      id: Value(id),
      popularity: Value(popularity),
      name: Value(name),
      imageUrl: Value(imageUrl),
      biography: biography == null && nullToAbsent
          ? const Value.absent()
          : Value(biography),
      knownFor: knownFor == null && nullToAbsent
          ? const Value.absent()
          : Value(knownFor),
    );
  }

  factory PersonModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PersonModel(
      id: serializer.fromJson<int>(json['id']),
      popularity: serializer.fromJson<double>(json['popularity']),
      name: serializer.fromJson<String>(json['name']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
      biography: serializer.fromJson<String?>(json['biography']),
      knownFor: serializer.fromJson<String?>(json['knownFor']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'popularity': serializer.toJson<double>(popularity),
      'name': serializer.toJson<String>(name),
      'imageUrl': serializer.toJson<String>(imageUrl),
      'biography': serializer.toJson<String?>(biography),
      'knownFor': serializer.toJson<String?>(knownFor),
    };
  }

  PersonModel copyWith(
          {int? id,
          double? popularity,
          String? name,
          String? imageUrl,
          String? biography,
          String? knownFor}) =>
      PersonModel(
        id: id ?? this.id,
        popularity: popularity ?? this.popularity,
        name: name ?? this.name,
        imageUrl: imageUrl ?? this.imageUrl,
        biography: biography ?? this.biography,
        knownFor: knownFor ?? this.knownFor,
      );
  @override
  String toString() {
    return (StringBuffer('PersonModel(')
          ..write('id: $id, ')
          ..write('popularity: $popularity, ')
          ..write('name: $name, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('biography: $biography, ')
          ..write('knownFor: $knownFor')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, popularity, name, imageUrl, biography, knownFor);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PersonModel &&
          other.id == this.id &&
          other.popularity == this.popularity &&
          other.name == this.name &&
          other.imageUrl == this.imageUrl &&
          other.biography == this.biography &&
          other.knownFor == this.knownFor);
}

class PeopleCompanion extends UpdateCompanion<PersonModel> {
  final Value<int> id;
  final Value<double> popularity;
  final Value<String> name;
  final Value<String> imageUrl;
  final Value<String?> biography;
  final Value<String?> knownFor;
  const PeopleCompanion({
    this.id = const Value.absent(),
    this.popularity = const Value.absent(),
    this.name = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.biography = const Value.absent(),
    this.knownFor = const Value.absent(),
  });
  PeopleCompanion.insert({
    this.id = const Value.absent(),
    required double popularity,
    required String name,
    required String imageUrl,
    this.biography = const Value.absent(),
    this.knownFor = const Value.absent(),
  })  : popularity = Value(popularity),
        name = Value(name),
        imageUrl = Value(imageUrl);
  static Insertable<PersonModel> custom({
    Expression<int>? id,
    Expression<double>? popularity,
    Expression<String>? name,
    Expression<String>? imageUrl,
    Expression<String?>? biography,
    Expression<String?>? knownFor,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (popularity != null) 'popularity': popularity,
      if (name != null) 'name': name,
      if (imageUrl != null) 'image_url': imageUrl,
      if (biography != null) 'biography': biography,
      if (knownFor != null) 'known_for': knownFor,
    });
  }

  PeopleCompanion copyWith(
      {Value<int>? id,
      Value<double>? popularity,
      Value<String>? name,
      Value<String>? imageUrl,
      Value<String?>? biography,
      Value<String?>? knownFor}) {
    return PeopleCompanion(
      id: id ?? this.id,
      popularity: popularity ?? this.popularity,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      biography: biography ?? this.biography,
      knownFor: knownFor ?? this.knownFor,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (popularity.present) {
      map['popularity'] = Variable<double>(popularity.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (biography.present) {
      map['biography'] = Variable<String?>(biography.value);
    }
    if (knownFor.present) {
      map['known_for'] = Variable<String?>(knownFor.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PeopleCompanion(')
          ..write('id: $id, ')
          ..write('popularity: $popularity, ')
          ..write('name: $name, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('biography: $biography, ')
          ..write('knownFor: $knownFor')
          ..write(')'))
        .toString();
  }
}

class $PeopleTable extends People with TableInfo<$PeopleTable, PersonModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PeopleTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _popularityMeta = const VerificationMeta('popularity');
  @override
  late final GeneratedColumn<double?> popularity = GeneratedColumn<double?>(
      'popularity', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String?> imageUrl = GeneratedColumn<String?>(
      'image_url', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _biographyMeta = const VerificationMeta('biography');
  @override
  late final GeneratedColumn<String?> biography = GeneratedColumn<String?>(
      'biography', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _knownForMeta = const VerificationMeta('knownFor');
  @override
  late final GeneratedColumn<String?> knownFor = GeneratedColumn<String?>(
      'known_for', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, popularity, name, imageUrl, biography, knownFor];
  @override
  String get aliasedName => _alias ?? 'people';
  @override
  String get actualTableName => 'people';
  @override
  VerificationContext validateIntegrity(Insertable<PersonModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('popularity')) {
      context.handle(
          _popularityMeta,
          popularity.isAcceptableOrUnknown(
              data['popularity']!, _popularityMeta));
    } else if (isInserting) {
      context.missing(_popularityMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    if (data.containsKey('biography')) {
      context.handle(_biographyMeta,
          biography.isAcceptableOrUnknown(data['biography']!, _biographyMeta));
    }
    if (data.containsKey('known_for')) {
      context.handle(_knownForMeta,
          knownFor.isAcceptableOrUnknown(data['known_for']!, _knownForMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PersonModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PersonModel.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PeopleTable createAlias(String alias) {
    return $PeopleTable(attachedDatabase, alias);
  }
}

abstract class _$PeopleDatabase extends GeneratedDatabase {
  _$PeopleDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $PeopleTable people = $PeopleTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [people];
}
