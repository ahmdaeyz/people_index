// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'server_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ServerFailure {
  String get message => throw _privateConstructorUsedError;
  bool get isAction => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) internalError,
    required TResult Function(String message, bool isAction) serviceUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServerFailureCopyWith<ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(
          ServerFailure value, $Res Function(ServerFailure) then) =
      _$ServerFailureCopyWithImpl<$Res>;
  $Res call({String message, bool isAction});
}

/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._value, this._then);

  final ServerFailure _value;
  // ignore: unused_field
  final $Res Function(ServerFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res>
    implements $ServerFailureCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res> extends _$ServerFailureCopyWithImpl<$Res>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, (v) => _then(v as _$Unknown));

  @override
  _$Unknown get _value => super._value as _$Unknown;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_$Unknown(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ServerFailure.unknown(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unknown &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isAction, isAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAction));

  @JsonKey(ignore: true)
  @override
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      __$$UnknownCopyWithImpl<_$Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) internalError,
    required TResult Function(String message, bool isAction) serviceUnavailable,
  }) {
    return unknown(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
  }) {
    return unknown?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements ServerFailure {
  const factory Unknown({required final String message, final bool isAction}) =
      _$Unknown;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$UnknownCopyWith<_$Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalErrorCopyWith<$Res>
    implements $ServerFailureCopyWith<$Res> {
  factory _$$InternalErrorCopyWith(
          _$InternalError value, $Res Function(_$InternalError) then) =
      __$$InternalErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$InternalErrorCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res>
    implements _$$InternalErrorCopyWith<$Res> {
  __$$InternalErrorCopyWithImpl(
      _$InternalError _value, $Res Function(_$InternalError) _then)
      : super(_value, (v) => _then(v as _$InternalError));

  @override
  _$InternalError get _value => super._value as _$InternalError;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_$InternalError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InternalError implements InternalError {
  const _$InternalError({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ServerFailure.internalError(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalError &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isAction, isAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAction));

  @JsonKey(ignore: true)
  @override
  _$$InternalErrorCopyWith<_$InternalError> get copyWith =>
      __$$InternalErrorCopyWithImpl<_$InternalError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) internalError,
    required TResult Function(String message, bool isAction) serviceUnavailable,
  }) {
    return internalError(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
  }) {
    return internalError?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class InternalError implements ServerFailure {
  const factory InternalError(
      {required final String message, final bool isAction}) = _$InternalError;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InternalErrorCopyWith<_$InternalError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceUnavailableCopyWith<$Res>
    implements $ServerFailureCopyWith<$Res> {
  factory _$$ServiceUnavailableCopyWith(_$ServiceUnavailable value,
          $Res Function(_$ServiceUnavailable) then) =
      __$$ServiceUnavailableCopyWithImpl<$Res>;
  @override
  $Res call({String message, bool isAction});
}

/// @nodoc
class __$$ServiceUnavailableCopyWithImpl<$Res>
    extends _$ServerFailureCopyWithImpl<$Res>
    implements _$$ServiceUnavailableCopyWith<$Res> {
  __$$ServiceUnavailableCopyWithImpl(
      _$ServiceUnavailable _value, $Res Function(_$ServiceUnavailable) _then)
      : super(_value, (v) => _then(v as _$ServiceUnavailable));

  @override
  _$ServiceUnavailable get _value => super._value as _$ServiceUnavailable;

  @override
  $Res call({
    Object? message = freezed,
    Object? isAction = freezed,
  }) {
    return _then(_$ServiceUnavailable(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAction: isAction == freezed
          ? _value.isAction
          : isAction // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceUnavailable implements ServiceUnavailable {
  const _$ServiceUnavailable({required this.message, this.isAction = false});

  @override
  final String message;
  @override
  @JsonKey()
  final bool isAction;

  @override
  String toString() {
    return 'ServerFailure.serviceUnavailable(message: $message, isAction: $isAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceUnavailable &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.isAction, isAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(isAction));

  @JsonKey(ignore: true)
  @override
  _$$ServiceUnavailableCopyWith<_$ServiceUnavailable> get copyWith =>
      __$$ServiceUnavailableCopyWithImpl<_$ServiceUnavailable>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message, bool isAction) unknown,
    required TResult Function(String message, bool isAction) internalError,
    required TResult Function(String message, bool isAction) serviceUnavailable,
  }) {
    return serviceUnavailable(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
  }) {
    return serviceUnavailable?.call(message, isAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message, bool isAction)? unknown,
    TResult Function(String message, bool isAction)? internalError,
    TResult Function(String message, bool isAction)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(message, isAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unknown value) unknown,
    required TResult Function(InternalError value) internalError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
  }) {
    return serviceUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
  }) {
    return serviceUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? unknown,
    TResult Function(InternalError value)? internalError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    required TResult orElse(),
  }) {
    if (serviceUnavailable != null) {
      return serviceUnavailable(this);
    }
    return orElse();
  }
}

abstract class ServiceUnavailable implements ServerFailure {
  const factory ServiceUnavailable(
      {required final String message,
      final bool isAction}) = _$ServiceUnavailable;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  bool get isAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ServiceUnavailableCopyWith<_$ServiceUnavailable> get copyWith =>
      throw _privateConstructorUsedError;
}
