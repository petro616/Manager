// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<OnboardingEntities> data) loaded,
    required TResult Function() compeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<OnboardingEntities> data)? loaded,
    TResult? Function()? compeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<OnboardingEntities> data)? loaded,
    TResult Function()? compeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loaded<T> value) loaded,
    required TResult Function(Completed<T> value) compeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loaded<T> value)? loaded,
    TResult? Function(Completed<T> value)? compeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loaded<T> value)? loaded,
    TResult Function(Completed<T> value)? compeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<T, $Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState<T> value, $Res Function(OnboardingState<T>) then) =
      _$OnboardingStateCopyWithImpl<T, $Res, OnboardingState<T>>;
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<T, $Res, $Val extends OnboardingState<T>>
    implements $OnboardingStateCopyWith<T, $Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleImplCopyWith<T, $Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl<T> value, $Res Function(_$IdleImpl<T>) then) =
      __$$IdleImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<T, $Res>
    extends _$OnboardingStateCopyWithImpl<T, $Res, _$IdleImpl<T>>
    implements _$$IdleImplCopyWith<T, $Res> {
  __$$IdleImplCopyWithImpl(
      _$IdleImpl<T> _value, $Res Function(_$IdleImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl<T> implements Idle<T> {
  _$IdleImpl();

  @override
  String toString() {
    return 'OnboardingState<$T>.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<OnboardingEntities> data) loaded,
    required TResult Function() compeleted,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<OnboardingEntities> data)? loaded,
    TResult? Function()? compeleted,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<OnboardingEntities> data)? loaded,
    TResult Function()? compeleted,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loaded<T> value) loaded,
    required TResult Function(Completed<T> value) compeleted,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loaded<T> value)? loaded,
    TResult? Function(Completed<T> value)? compeleted,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loaded<T> value)? loaded,
    TResult Function(Completed<T> value)? compeleted,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements OnboardingState<T> {
  factory Idle() = _$IdleImpl<T>;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<T, $Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl<T> value, $Res Function(_$LoadedImpl<T>) then) =
      __$$LoadedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<OnboardingEntities> data});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<T, $Res>
    extends _$OnboardingStateCopyWithImpl<T, $Res, _$LoadedImpl<T>>
    implements _$$LoadedImplCopyWith<T, $Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl<T> _value, $Res Function(_$LoadedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedImpl<T>(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<OnboardingEntities>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl<T> implements Loaded<T> {
  _$LoadedImpl(final List<OnboardingEntities> data) : _data = data;

  final List<OnboardingEntities> _data;
  @override
  List<OnboardingEntities> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OnboardingState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<T, _$LoadedImpl<T>> get copyWith =>
      __$$LoadedImplCopyWithImpl<T, _$LoadedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<OnboardingEntities> data) loaded,
    required TResult Function() compeleted,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<OnboardingEntities> data)? loaded,
    TResult? Function()? compeleted,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<OnboardingEntities> data)? loaded,
    TResult Function()? compeleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loaded<T> value) loaded,
    required TResult Function(Completed<T> value) compeleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loaded<T> value)? loaded,
    TResult? Function(Completed<T> value)? compeleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loaded<T> value)? loaded,
    TResult Function(Completed<T> value)? compeleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded<T> implements OnboardingState<T> {
  factory Loaded(final List<OnboardingEntities> data) = _$LoadedImpl<T>;

  List<OnboardingEntities> get data;

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<T, _$LoadedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedImplCopyWith<T, $Res> {
  factory _$$CompletedImplCopyWith(
          _$CompletedImpl<T> value, $Res Function(_$CompletedImpl<T>) then) =
      __$$CompletedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CompletedImplCopyWithImpl<T, $Res>
    extends _$OnboardingStateCopyWithImpl<T, $Res, _$CompletedImpl<T>>
    implements _$$CompletedImplCopyWith<T, $Res> {
  __$$CompletedImplCopyWithImpl(
      _$CompletedImpl<T> _value, $Res Function(_$CompletedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompletedImpl<T> implements Completed<T> {
  _$CompletedImpl();

  @override
  String toString() {
    return 'OnboardingState<$T>.compeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(List<OnboardingEntities> data) loaded,
    required TResult Function() compeleted,
  }) {
    return compeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(List<OnboardingEntities> data)? loaded,
    TResult? Function()? compeleted,
  }) {
    return compeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(List<OnboardingEntities> data)? loaded,
    TResult Function()? compeleted,
    required TResult orElse(),
  }) {
    if (compeleted != null) {
      return compeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loaded<T> value) loaded,
    required TResult Function(Completed<T> value) compeleted,
  }) {
    return compeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loaded<T> value)? loaded,
    TResult? Function(Completed<T> value)? compeleted,
  }) {
    return compeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loaded<T> value)? loaded,
    TResult Function(Completed<T> value)? compeleted,
    required TResult orElse(),
  }) {
    if (compeleted != null) {
      return compeleted(this);
    }
    return orElse();
  }
}

abstract class Completed<T> implements OnboardingState<T> {
  factory Completed() = _$CompletedImpl<T>;
}
