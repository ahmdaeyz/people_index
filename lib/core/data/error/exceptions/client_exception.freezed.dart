// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
        resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(BadRequest value) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientExceptionCopyWith<$Res> {
  factory $ClientExceptionCopyWith(
          ClientException value, $Res Function(ClientException) then) =
      _$ClientExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClientExceptionCopyWithImpl<$Res>
    implements $ClientExceptionCopyWith<$Res> {
  _$ClientExceptionCopyWithImpl(this._value, this._then);

  final ClientException _value;
  // ignore: unused_field
  final $Res Function(ClientException) _then;
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res> extends _$ClientExceptionCopyWithImpl<$Res>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, (v) => _then(v as _$Unknown));

  @override
  _$Unknown get _value => super._value as _$Unknown;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Unknown(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unknown &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      __$$UnknownCopyWithImpl<_$Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
        resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) badRequest,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(BadRequest value) badRequest,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements ClientException {
  const factory Unknown({required final String message}) = _$Unknown;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResourceNotFoundCopyWith<$Res> {
  factory _$$ResourceNotFoundCopyWith(
          _$ResourceNotFound value, $Res Function(_$ResourceNotFound) then) =
      __$$ResourceNotFoundCopyWithImpl<$Res>;
  $Res call({String resourceName, String message});
}

/// @nodoc
class __$$ResourceNotFoundCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res>
    implements _$$ResourceNotFoundCopyWith<$Res> {
  __$$ResourceNotFoundCopyWithImpl(
      _$ResourceNotFound _value, $Res Function(_$ResourceNotFound) _then)
      : super(_value, (v) => _then(v as _$ResourceNotFound));

  @override
  _$ResourceNotFound get _value => super._value as _$ResourceNotFound;

  @override
  $Res call({
    Object? resourceName = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ResourceNotFound(
      resourceName: resourceName == freezed
          ? _value.resourceName
          : resourceName // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResourceNotFound implements ResourceNotFound {
  const _$ResourceNotFound({required this.resourceName, required this.message});

  @override
  final String resourceName;
  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.resourceNotFound(resourceName: $resourceName, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResourceNotFound &&
            const DeepCollectionEquality()
                .equals(other.resourceName, resourceName) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resourceName),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ResourceNotFoundCopyWith<_$ResourceNotFound> get copyWith =>
      __$$ResourceNotFoundCopyWithImpl<_$ResourceNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
        resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) badRequest,
  }) {
    return resourceNotFound(resourceName, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
  }) {
    return resourceNotFound?.call(resourceName, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (resourceNotFound != null) {
      return resourceNotFound(resourceName, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(BadRequest value) badRequest,
  }) {
    return resourceNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
  }) {
    return resourceNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (resourceNotFound != null) {
      return resourceNotFound(this);
    }
    return orElse();
  }
}

abstract class ResourceNotFound implements ClientException {
  const factory ResourceNotFound(
      {required final String resourceName,
      required final String message}) = _$ResourceNotFound;

  String get resourceName => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ResourceNotFoundCopyWith<_$ResourceNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthorizedAccessCopyWith<$Res> {
  factory _$$UnAuthorizedAccessCopyWith(_$UnAuthorizedAccess value,
          $Res Function(_$UnAuthorizedAccess) then) =
      __$$UnAuthorizedAccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthorizedAccessCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res>
    implements _$$UnAuthorizedAccessCopyWith<$Res> {
  __$$UnAuthorizedAccessCopyWithImpl(
      _$UnAuthorizedAccess _value, $Res Function(_$UnAuthorizedAccess) _then)
      : super(_value, (v) => _then(v as _$UnAuthorizedAccess));

  @override
  _$UnAuthorizedAccess get _value => super._value as _$UnAuthorizedAccess;
}

/// @nodoc

class _$UnAuthorizedAccess implements UnAuthorizedAccess {
  const _$UnAuthorizedAccess();

  @override
  String toString() {
    return 'ClientException.unauthorizedAccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthorizedAccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
        resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) badRequest,
  }) {
    return unauthorizedAccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
  }) {
    return unauthorizedAccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (unauthorizedAccess != null) {
      return unauthorizedAccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(BadRequest value) badRequest,
  }) {
    return unauthorizedAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
  }) {
    return unauthorizedAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (unauthorizedAccess != null) {
      return unauthorizedAccess(this);
    }
    return orElse();
  }
}

abstract class UnAuthorizedAccess implements ClientException {
  const factory UnAuthorizedAccess() = _$UnAuthorizedAccess;
}

/// @nodoc
abstract class _$$ForbiddenAccessCopyWith<$Res> {
  factory _$$ForbiddenAccessCopyWith(
          _$ForbiddenAccess value, $Res Function(_$ForbiddenAccess) then) =
      __$$ForbiddenAccessCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$ForbiddenAccessCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res>
    implements _$$ForbiddenAccessCopyWith<$Res> {
  __$$ForbiddenAccessCopyWithImpl(
      _$ForbiddenAccess _value, $Res Function(_$ForbiddenAccess) _then)
      : super(_value, (v) => _then(v as _$ForbiddenAccess));

  @override
  _$ForbiddenAccess get _value => super._value as _$ForbiddenAccess;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ForbiddenAccess(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForbiddenAccess implements ForbiddenAccess {
  const _$ForbiddenAccess({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.forbiddenAccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForbiddenAccess &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ForbiddenAccessCopyWith<_$ForbiddenAccess> get copyWith =>
      __$$ForbiddenAccessCopyWithImpl<_$ForbiddenAccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
        resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) badRequest,
  }) {
    return forbiddenAccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
  }) {
    return forbiddenAccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (forbiddenAccess != null) {
      return forbiddenAccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(BadRequest value) badRequest,
  }) {
    return forbiddenAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
  }) {
    return forbiddenAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (forbiddenAccess != null) {
      return forbiddenAccess(this);
    }
    return orElse();
  }
}

abstract class ForbiddenAccess implements ClientException {
  const factory ForbiddenAccess({required final String message}) =
      _$ForbiddenAccess;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ForbiddenAccessCopyWith<_$ForbiddenAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkErrorCopyWith<$Res> {
  factory _$$NetworkErrorCopyWith(
          _$NetworkError value, $Res Function(_$NetworkError) then) =
      __$$NetworkErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$NetworkErrorCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res>
    implements _$$NetworkErrorCopyWith<$Res> {
  __$$NetworkErrorCopyWithImpl(
      _$NetworkError _value, $Res Function(_$NetworkError) _then)
      : super(_value, (v) => _then(v as _$NetworkError));

  @override
  _$NetworkError get _value => super._value as _$NetworkError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NetworkError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkError implements NetworkError {
  const _$NetworkError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.networkError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$NetworkErrorCopyWith<_$NetworkError> get copyWith =>
      __$$NetworkErrorCopyWithImpl<_$NetworkError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
        resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) badRequest,
  }) {
    return networkError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
  }) {
    return networkError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(BadRequest value) badRequest,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError implements ClientException {
  const factory NetworkError({required final String message}) = _$NetworkError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NetworkErrorCopyWith<_$NetworkError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestCopyWith<$Res> {
  factory _$$BadRequestCopyWith(
          _$BadRequest value, $Res Function(_$BadRequest) then) =
      __$$BadRequestCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$BadRequestCopyWithImpl<$Res>
    extends _$ClientExceptionCopyWithImpl<$Res>
    implements _$$BadRequestCopyWith<$Res> {
  __$$BadRequestCopyWithImpl(
      _$BadRequest _value, $Res Function(_$BadRequest) _then)
      : super(_value, (v) => _then(v as _$BadRequest));

  @override
  _$BadRequest get _value => super._value as _$BadRequest;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BadRequest(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BadRequest implements BadRequest {
  const _$BadRequest({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ClientException.badRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequest &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$BadRequestCopyWith<_$BadRequest> get copyWith =>
      __$$BadRequestCopyWithImpl<_$BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) unknown,
    required TResult Function(String resourceName, String message)
        resourceNotFound,
    required TResult Function() unauthorizedAccess,
    required TResult Function(String message) forbiddenAccess,
    required TResult Function(String message) networkError,
    required TResult Function(String message) badRequest,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? unknown,
    TResult Function(String resourceName, String message)? resourceNotFound,
    TResult Function()? unauthorizedAccess,
    TResult Function(String message)? forbiddenAccess,
    TResult Function(String message)? networkError,
    TResult Function(String message)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(ResourceNotFound value) resourceNotFound,
    required TResult Function(UnAuthorizedAccess value) unauthorizedAccess,
    required TResult Function(ForbiddenAccess value) forbiddenAccess,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(BadRequest value) badRequest,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(ResourceNotFound value)? resourceNotFound,
    TResult Function(UnAuthorizedAccess value)? unauthorizedAccess,
    TResult Function(ForbiddenAccess value)? forbiddenAccess,
    TResult Function(NetworkError value)? networkError,
    TResult Function(BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements ClientException {
  const factory BadRequest({required final String message}) = _$BadRequest;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$BadRequestCopyWith<_$BadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
