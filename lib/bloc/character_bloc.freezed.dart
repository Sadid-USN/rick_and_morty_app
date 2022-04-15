// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharacterEventTearOff {
  const _$CharacterEventTearOff();

  CharacterEventFetch fetch({required String name, required int page}) {
    return CharacterEventFetch(
      name: name,
      page: page,
    );
  }
}

/// @nodoc
const $CharacterEvent = _$CharacterEventTearOff();

/// @nodoc
mixin _$CharacterEvent {
  String get name => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterEventCopyWith<CharacterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res>;
  $Res call({String name, int page});
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  final CharacterEvent _value;
  // ignore: unused_field
  final $Res Function(CharacterEvent) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $CharacterEventFetchCopyWith<$Res>
    implements $CharacterEventCopyWith<$Res> {
  factory $CharacterEventFetchCopyWith(
          CharacterEventFetch value, $Res Function(CharacterEventFetch) then) =
      _$CharacterEventFetchCopyWithImpl<$Res>;
  @override
  $Res call({String name, int page});
}

/// @nodoc
class _$CharacterEventFetchCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res>
    implements $CharacterEventFetchCopyWith<$Res> {
  _$CharacterEventFetchCopyWithImpl(
      CharacterEventFetch _value, $Res Function(CharacterEventFetch) _then)
      : super(_value, (v) => _then(v as CharacterEventFetch));

  @override
  CharacterEventFetch get _value => super._value as CharacterEventFetch;

  @override
  $Res call({
    Object? name = freezed,
    Object? page = freezed,
  }) {
    return _then(CharacterEventFetch(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CharacterEventFetch
    with DiagnosticableTreeMixin
    implements CharacterEventFetch {
  const _$CharacterEventFetch({required this.name, required this.page});

  @override
  final String name;
  @override
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharacterEvent.fetch(name: $name, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharacterEvent.fetch'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CharacterEventFetch &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  $CharacterEventFetchCopyWith<CharacterEventFetch> get copyWith =>
      _$CharacterEventFetchCopyWithImpl<CharacterEventFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int page) fetch,
  }) {
    return fetch(name, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
  }) {
    return fetch?.call(name, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int page)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(name, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class CharacterEventFetch implements CharacterEvent {
  const factory CharacterEventFetch({required String name, required int page}) =
      _$CharacterEventFetch;

  @override
  String get name;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  $CharacterEventFetchCopyWith<CharacterEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CharacterStateTearOff {
  const _$CharacterStateTearOff();

  CharacterStateLoading loading() {
    return const CharacterStateLoading();
  }

  CharacterStateLoaded loaded({required CharacterModel characterModelLoaded}) {
    return CharacterStateLoaded(
      characterModelLoaded: characterModelLoaded,
    );
  }

  CharacterStateError error() {
    return const CharacterStateError();
  }
}

/// @nodoc
const $CharacterState = _$CharacterStateTearOff();

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CharacterModel characterModelLoaded) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CharacterModel characterModelLoaded)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CharacterModel characterModelLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  final CharacterState _value;
  // ignore: unused_field
  final $Res Function(CharacterState) _then;
}

/// @nodoc
abstract class $CharacterStateLoadingCopyWith<$Res> {
  factory $CharacterStateLoadingCopyWith(CharacterStateLoading value,
          $Res Function(CharacterStateLoading) then) =
      _$CharacterStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterStateLoadingCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterStateLoadingCopyWith<$Res> {
  _$CharacterStateLoadingCopyWithImpl(
      CharacterStateLoading _value, $Res Function(CharacterStateLoading) _then)
      : super(_value, (v) => _then(v as CharacterStateLoading));

  @override
  CharacterStateLoading get _value => super._value as CharacterStateLoading;
}

/// @nodoc

class _$CharacterStateLoading
    with DiagnosticableTreeMixin
    implements CharacterStateLoading {
  const _$CharacterStateLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharacterState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CharacterState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CharacterStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CharacterModel characterModelLoaded) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CharacterModel characterModelLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CharacterModel characterModelLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CharacterStateLoading implements CharacterState {
  const factory CharacterStateLoading() = _$CharacterStateLoading;
}

/// @nodoc
abstract class $CharacterStateLoadedCopyWith<$Res> {
  factory $CharacterStateLoadedCopyWith(CharacterStateLoaded value,
          $Res Function(CharacterStateLoaded) then) =
      _$CharacterStateLoadedCopyWithImpl<$Res>;
  $Res call({CharacterModel characterModelLoaded});

  $CharacterModelCopyWith<$Res> get characterModelLoaded;
}

/// @nodoc
class _$CharacterStateLoadedCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterStateLoadedCopyWith<$Res> {
  _$CharacterStateLoadedCopyWithImpl(
      CharacterStateLoaded _value, $Res Function(CharacterStateLoaded) _then)
      : super(_value, (v) => _then(v as CharacterStateLoaded));

  @override
  CharacterStateLoaded get _value => super._value as CharacterStateLoaded;

  @override
  $Res call({
    Object? characterModelLoaded = freezed,
  }) {
    return _then(CharacterStateLoaded(
      characterModelLoaded: characterModelLoaded == freezed
          ? _value.characterModelLoaded
          : characterModelLoaded // ignore: cast_nullable_to_non_nullable
              as CharacterModel,
    ));
  }

  @override
  $CharacterModelCopyWith<$Res> get characterModelLoaded {
    return $CharacterModelCopyWith<$Res>(_value.characterModelLoaded, (value) {
      return _then(_value.copyWith(characterModelLoaded: value));
    });
  }
}

/// @nodoc

class _$CharacterStateLoaded
    with DiagnosticableTreeMixin
    implements CharacterStateLoaded {
  const _$CharacterStateLoaded({required this.characterModelLoaded});

  @override
  final CharacterModel characterModelLoaded;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharacterState.loaded(characterModelLoaded: $characterModelLoaded)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharacterState.loaded'))
      ..add(DiagnosticsProperty('characterModelLoaded', characterModelLoaded));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CharacterStateLoaded &&
            const DeepCollectionEquality()
                .equals(other.characterModelLoaded, characterModelLoaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(characterModelLoaded));

  @JsonKey(ignore: true)
  @override
  $CharacterStateLoadedCopyWith<CharacterStateLoaded> get copyWith =>
      _$CharacterStateLoadedCopyWithImpl<CharacterStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CharacterModel characterModelLoaded) loaded,
    required TResult Function() error,
  }) {
    return loaded(characterModelLoaded);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CharacterModel characterModelLoaded)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(characterModelLoaded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CharacterModel characterModelLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characterModelLoaded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharacterStateLoaded implements CharacterState {
  const factory CharacterStateLoaded(
      {required CharacterModel characterModelLoaded}) = _$CharacterStateLoaded;

  CharacterModel get characterModelLoaded;
  @JsonKey(ignore: true)
  $CharacterStateLoadedCopyWith<CharacterStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateErrorCopyWith<$Res> {
  factory $CharacterStateErrorCopyWith(
          CharacterStateError value, $Res Function(CharacterStateError) then) =
      _$CharacterStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharacterStateErrorCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterStateErrorCopyWith<$Res> {
  _$CharacterStateErrorCopyWithImpl(
      CharacterStateError _value, $Res Function(CharacterStateError) _then)
      : super(_value, (v) => _then(v as CharacterStateError));

  @override
  CharacterStateError get _value => super._value as CharacterStateError;
}

/// @nodoc

class _$CharacterStateError
    with DiagnosticableTreeMixin
    implements CharacterStateError {
  const _$CharacterStateError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharacterState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CharacterState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CharacterStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CharacterModel characterModelLoaded) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CharacterModel characterModelLoaded)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CharacterModel characterModelLoaded)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CharacterStateLoading value) loading,
    required TResult Function(CharacterStateLoaded value) loaded,
    required TResult Function(CharacterStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CharacterStateLoading value)? loading,
    TResult Function(CharacterStateLoaded value)? loaded,
    TResult Function(CharacterStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CharacterStateError implements CharacterState {
  const factory CharacterStateError() = _$CharacterStateError;
}
