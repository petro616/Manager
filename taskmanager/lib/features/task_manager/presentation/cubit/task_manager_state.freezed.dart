// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_manager_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskManagerState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) loadedList,
    required TResult Function() emptyList,
    required TResult Function(T data) loadedSingle,
    required TResult Function(T data) created,
    required TResult Function(T data) updated,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? loadedList,
    TResult? Function()? emptyList,
    TResult? Function(T data)? loadedSingle,
    TResult? Function(T data)? created,
    TResult? Function(T data)? updated,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? loadedList,
    TResult Function()? emptyList,
    TResult Function(T data)? loadedSingle,
    TResult Function(T data)? created,
    TResult Function(T data)? updated,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(LoadedList<T> value) loadedList,
    required TResult Function(EmptyList<T> value) emptyList,
    required TResult Function(LoadedSingle<T> value) loadedSingle,
    required TResult Function(Created<T> value) created,
    required TResult Function(Updated<T> value) updated,
    required TResult Function(Deleted<T> value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(LoadedList<T> value)? loadedList,
    TResult? Function(EmptyList<T> value)? emptyList,
    TResult? Function(LoadedSingle<T> value)? loadedSingle,
    TResult? Function(Created<T> value)? created,
    TResult? Function(Updated<T> value)? updated,
    TResult? Function(Deleted<T> value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(LoadedList<T> value)? loadedList,
    TResult Function(EmptyList<T> value)? emptyList,
    TResult Function(LoadedSingle<T> value)? loadedSingle,
    TResult Function(Created<T> value)? created,
    TResult Function(Updated<T> value)? updated,
    TResult Function(Deleted<T> value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskManagerStateCopyWith<T, $Res> {
  factory $TaskManagerStateCopyWith(
          TaskManagerState<T> value, $Res Function(TaskManagerState<T>) then) =
      _$TaskManagerStateCopyWithImpl<T, $Res, TaskManagerState<T>>;
}

/// @nodoc
class _$TaskManagerStateCopyWithImpl<T, $Res, $Val extends TaskManagerState<T>>
    implements $TaskManagerStateCopyWith<T, $Res> {
  _$TaskManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskManagerState
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
    extends _$TaskManagerStateCopyWithImpl<T, $Res, _$IdleImpl<T>>
    implements _$$IdleImplCopyWith<T, $Res> {
  __$$IdleImplCopyWithImpl(
      _$IdleImpl<T> _value, $Res Function(_$IdleImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl<T> implements Idle<T> {
  _$IdleImpl();

  @override
  String toString() {
    return 'TaskManagerState<$T>.idle()';
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
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) loadedList,
    required TResult Function() emptyList,
    required TResult Function(T data) loadedSingle,
    required TResult Function(T data) created,
    required TResult Function(T data) updated,
    required TResult Function() deleted,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? loadedList,
    TResult? Function()? emptyList,
    TResult? Function(T data)? loadedSingle,
    TResult? Function(T data)? created,
    TResult? Function(T data)? updated,
    TResult? Function()? deleted,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? loadedList,
    TResult Function()? emptyList,
    TResult Function(T data)? loadedSingle,
    TResult Function(T data)? created,
    TResult Function(T data)? updated,
    TResult Function()? deleted,
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
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(LoadedList<T> value) loadedList,
    required TResult Function(EmptyList<T> value) emptyList,
    required TResult Function(LoadedSingle<T> value) loadedSingle,
    required TResult Function(Created<T> value) created,
    required TResult Function(Updated<T> value) updated,
    required TResult Function(Deleted<T> value) deleted,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(LoadedList<T> value)? loadedList,
    TResult? Function(EmptyList<T> value)? emptyList,
    TResult? Function(LoadedSingle<T> value)? loadedSingle,
    TResult? Function(Created<T> value)? created,
    TResult? Function(Updated<T> value)? updated,
    TResult? Function(Deleted<T> value)? deleted,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(LoadedList<T> value)? loadedList,
    TResult Function(EmptyList<T> value)? emptyList,
    TResult Function(LoadedSingle<T> value)? loadedSingle,
    TResult Function(Created<T> value)? created,
    TResult Function(Updated<T> value)? updated,
    TResult Function(Deleted<T> value)? deleted,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements TaskManagerState<T> {
  factory Idle() = _$IdleImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$TaskManagerStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  _$LoadingImpl();

  @override
  String toString() {
    return 'TaskManagerState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) loadedList,
    required TResult Function() emptyList,
    required TResult Function(T data) loadedSingle,
    required TResult Function(T data) created,
    required TResult Function(T data) updated,
    required TResult Function() deleted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? loadedList,
    TResult? Function()? emptyList,
    TResult? Function(T data)? loadedSingle,
    TResult? Function(T data)? created,
    TResult? Function(T data)? updated,
    TResult? Function()? deleted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? loadedList,
    TResult Function()? emptyList,
    TResult Function(T data)? loadedSingle,
    TResult Function(T data)? created,
    TResult Function(T data)? updated,
    TResult Function()? deleted,
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
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(LoadedList<T> value) loadedList,
    required TResult Function(EmptyList<T> value) emptyList,
    required TResult Function(LoadedSingle<T> value) loadedSingle,
    required TResult Function(Created<T> value) created,
    required TResult Function(Updated<T> value) updated,
    required TResult Function(Deleted<T> value) deleted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(LoadedList<T> value)? loadedList,
    TResult? Function(EmptyList<T> value)? emptyList,
    TResult? Function(LoadedSingle<T> value)? loadedSingle,
    TResult? Function(Created<T> value)? created,
    TResult? Function(Updated<T> value)? updated,
    TResult? Function(Deleted<T> value)? deleted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(LoadedList<T> value)? loadedList,
    TResult Function(EmptyList<T> value)? emptyList,
    TResult Function(LoadedSingle<T> value)? loadedSingle,
    TResult Function(Created<T> value)? created,
    TResult Function(Updated<T> value)? updated,
    TResult Function(Deleted<T> value)? deleted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements TaskManagerState<T> {
  factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T> value, $Res Function(_$FailureImpl<T>) then) =
      __$$FailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({NetworkExceptions error});

  $NetworkExceptionsCopyWith<$Res> get error;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, $Res>
    extends _$TaskManagerStateCopyWithImpl<T, $Res, _$FailureImpl<T>>
    implements _$$FailureImplCopyWith<T, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T> _value, $Res Function(_$FailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NetworkExceptionsCopyWith<$Res> get error {
    return $NetworkExceptionsCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$FailureImpl<T> implements Failure<T> {
  _$FailureImpl(this.error);

  @override
  final NetworkExceptions error;

  @override
  String toString() {
    return 'TaskManagerState<$T>.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, _$FailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) loadedList,
    required TResult Function() emptyList,
    required TResult Function(T data) loadedSingle,
    required TResult Function(T data) created,
    required TResult Function(T data) updated,
    required TResult Function() deleted,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? loadedList,
    TResult? Function()? emptyList,
    TResult? Function(T data)? loadedSingle,
    TResult? Function(T data)? created,
    TResult? Function(T data)? updated,
    TResult? Function()? deleted,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? loadedList,
    TResult Function()? emptyList,
    TResult Function(T data)? loadedSingle,
    TResult Function(T data)? created,
    TResult Function(T data)? updated,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(LoadedList<T> value) loadedList,
    required TResult Function(EmptyList<T> value) emptyList,
    required TResult Function(LoadedSingle<T> value) loadedSingle,
    required TResult Function(Created<T> value) created,
    required TResult Function(Updated<T> value) updated,
    required TResult Function(Deleted<T> value) deleted,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(LoadedList<T> value)? loadedList,
    TResult? Function(EmptyList<T> value)? emptyList,
    TResult? Function(LoadedSingle<T> value)? loadedSingle,
    TResult? Function(Created<T> value)? created,
    TResult? Function(Updated<T> value)? updated,
    TResult? Function(Deleted<T> value)? deleted,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(LoadedList<T> value)? loadedList,
    TResult Function(EmptyList<T> value)? emptyList,
    TResult Function(LoadedSingle<T> value)? loadedSingle,
    TResult Function(Created<T> value)? created,
    TResult Function(Updated<T> value)? updated,
    TResult Function(Deleted<T> value)? deleted,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T> implements TaskManagerState<T> {
  factory Failure(final NetworkExceptions error) = _$FailureImpl<T>;

  NetworkExceptions get error;

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedListImplCopyWith<T, $Res> {
  factory _$$LoadedListImplCopyWith(
          _$LoadedListImpl<T> value, $Res Function(_$LoadedListImpl<T>) then) =
      __$$LoadedListImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<T> data});
}

/// @nodoc
class __$$LoadedListImplCopyWithImpl<T, $Res>
    extends _$TaskManagerStateCopyWithImpl<T, $Res, _$LoadedListImpl<T>>
    implements _$$LoadedListImplCopyWith<T, $Res> {
  __$$LoadedListImplCopyWithImpl(
      _$LoadedListImpl<T> _value, $Res Function(_$LoadedListImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedListImpl<T>(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$LoadedListImpl<T> implements LoadedList<T> {
  _$LoadedListImpl(final List<T> data) : _data = data;

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TaskManagerState<$T>.loadedList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedListImpl<T> &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedListImplCopyWith<T, _$LoadedListImpl<T>> get copyWith =>
      __$$LoadedListImplCopyWithImpl<T, _$LoadedListImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) loadedList,
    required TResult Function() emptyList,
    required TResult Function(T data) loadedSingle,
    required TResult Function(T data) created,
    required TResult Function(T data) updated,
    required TResult Function() deleted,
  }) {
    return loadedList(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? loadedList,
    TResult? Function()? emptyList,
    TResult? Function(T data)? loadedSingle,
    TResult? Function(T data)? created,
    TResult? Function(T data)? updated,
    TResult? Function()? deleted,
  }) {
    return loadedList?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? loadedList,
    TResult Function()? emptyList,
    TResult Function(T data)? loadedSingle,
    TResult Function(T data)? created,
    TResult Function(T data)? updated,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (loadedList != null) {
      return loadedList(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(LoadedList<T> value) loadedList,
    required TResult Function(EmptyList<T> value) emptyList,
    required TResult Function(LoadedSingle<T> value) loadedSingle,
    required TResult Function(Created<T> value) created,
    required TResult Function(Updated<T> value) updated,
    required TResult Function(Deleted<T> value) deleted,
  }) {
    return loadedList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(LoadedList<T> value)? loadedList,
    TResult? Function(EmptyList<T> value)? emptyList,
    TResult? Function(LoadedSingle<T> value)? loadedSingle,
    TResult? Function(Created<T> value)? created,
    TResult? Function(Updated<T> value)? updated,
    TResult? Function(Deleted<T> value)? deleted,
  }) {
    return loadedList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(LoadedList<T> value)? loadedList,
    TResult Function(EmptyList<T> value)? emptyList,
    TResult Function(LoadedSingle<T> value)? loadedSingle,
    TResult Function(Created<T> value)? created,
    TResult Function(Updated<T> value)? updated,
    TResult Function(Deleted<T> value)? deleted,
    required TResult orElse(),
  }) {
    if (loadedList != null) {
      return loadedList(this);
    }
    return orElse();
  }
}

abstract class LoadedList<T> implements TaskManagerState<T> {
  factory LoadedList(final List<T> data) = _$LoadedListImpl<T>;

  List<T> get data;

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedListImplCopyWith<T, _$LoadedListImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyListImplCopyWith<T, $Res> {
  factory _$$EmptyListImplCopyWith(
          _$EmptyListImpl<T> value, $Res Function(_$EmptyListImpl<T>) then) =
      __$$EmptyListImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyListImplCopyWithImpl<T, $Res>
    extends _$TaskManagerStateCopyWithImpl<T, $Res, _$EmptyListImpl<T>>
    implements _$$EmptyListImplCopyWith<T, $Res> {
  __$$EmptyListImplCopyWithImpl(
      _$EmptyListImpl<T> _value, $Res Function(_$EmptyListImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyListImpl<T> implements EmptyList<T> {
  _$EmptyListImpl();

  @override
  String toString() {
    return 'TaskManagerState<$T>.emptyList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyListImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) loadedList,
    required TResult Function() emptyList,
    required TResult Function(T data) loadedSingle,
    required TResult Function(T data) created,
    required TResult Function(T data) updated,
    required TResult Function() deleted,
  }) {
    return emptyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? loadedList,
    TResult? Function()? emptyList,
    TResult? Function(T data)? loadedSingle,
    TResult? Function(T data)? created,
    TResult? Function(T data)? updated,
    TResult? Function()? deleted,
  }) {
    return emptyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? loadedList,
    TResult Function()? emptyList,
    TResult Function(T data)? loadedSingle,
    TResult Function(T data)? created,
    TResult Function(T data)? updated,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(LoadedList<T> value) loadedList,
    required TResult Function(EmptyList<T> value) emptyList,
    required TResult Function(LoadedSingle<T> value) loadedSingle,
    required TResult Function(Created<T> value) created,
    required TResult Function(Updated<T> value) updated,
    required TResult Function(Deleted<T> value) deleted,
  }) {
    return emptyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(LoadedList<T> value)? loadedList,
    TResult? Function(EmptyList<T> value)? emptyList,
    TResult? Function(LoadedSingle<T> value)? loadedSingle,
    TResult? Function(Created<T> value)? created,
    TResult? Function(Updated<T> value)? updated,
    TResult? Function(Deleted<T> value)? deleted,
  }) {
    return emptyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(LoadedList<T> value)? loadedList,
    TResult Function(EmptyList<T> value)? emptyList,
    TResult Function(LoadedSingle<T> value)? loadedSingle,
    TResult Function(Created<T> value)? created,
    TResult Function(Updated<T> value)? updated,
    TResult Function(Deleted<T> value)? deleted,
    required TResult orElse(),
  }) {
    if (emptyList != null) {
      return emptyList(this);
    }
    return orElse();
  }
}

abstract class EmptyList<T> implements TaskManagerState<T> {
  factory EmptyList() = _$EmptyListImpl<T>;
}

/// @nodoc
abstract class _$$LoadedSingleImplCopyWith<T, $Res> {
  factory _$$LoadedSingleImplCopyWith(_$LoadedSingleImpl<T> value,
          $Res Function(_$LoadedSingleImpl<T>) then) =
      __$$LoadedSingleImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$LoadedSingleImplCopyWithImpl<T, $Res>
    extends _$TaskManagerStateCopyWithImpl<T, $Res, _$LoadedSingleImpl<T>>
    implements _$$LoadedSingleImplCopyWith<T, $Res> {
  __$$LoadedSingleImplCopyWithImpl(
      _$LoadedSingleImpl<T> _value, $Res Function(_$LoadedSingleImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LoadedSingleImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LoadedSingleImpl<T> implements LoadedSingle<T> {
  _$LoadedSingleImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'TaskManagerState<$T>.loadedSingle(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSingleImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSingleImplCopyWith<T, _$LoadedSingleImpl<T>> get copyWith =>
      __$$LoadedSingleImplCopyWithImpl<T, _$LoadedSingleImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) loadedList,
    required TResult Function() emptyList,
    required TResult Function(T data) loadedSingle,
    required TResult Function(T data) created,
    required TResult Function(T data) updated,
    required TResult Function() deleted,
  }) {
    return loadedSingle(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? loadedList,
    TResult? Function()? emptyList,
    TResult? Function(T data)? loadedSingle,
    TResult? Function(T data)? created,
    TResult? Function(T data)? updated,
    TResult? Function()? deleted,
  }) {
    return loadedSingle?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? loadedList,
    TResult Function()? emptyList,
    TResult Function(T data)? loadedSingle,
    TResult Function(T data)? created,
    TResult Function(T data)? updated,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (loadedSingle != null) {
      return loadedSingle(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(LoadedList<T> value) loadedList,
    required TResult Function(EmptyList<T> value) emptyList,
    required TResult Function(LoadedSingle<T> value) loadedSingle,
    required TResult Function(Created<T> value) created,
    required TResult Function(Updated<T> value) updated,
    required TResult Function(Deleted<T> value) deleted,
  }) {
    return loadedSingle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(LoadedList<T> value)? loadedList,
    TResult? Function(EmptyList<T> value)? emptyList,
    TResult? Function(LoadedSingle<T> value)? loadedSingle,
    TResult? Function(Created<T> value)? created,
    TResult? Function(Updated<T> value)? updated,
    TResult? Function(Deleted<T> value)? deleted,
  }) {
    return loadedSingle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(LoadedList<T> value)? loadedList,
    TResult Function(EmptyList<T> value)? emptyList,
    TResult Function(LoadedSingle<T> value)? loadedSingle,
    TResult Function(Created<T> value)? created,
    TResult Function(Updated<T> value)? updated,
    TResult Function(Deleted<T> value)? deleted,
    required TResult orElse(),
  }) {
    if (loadedSingle != null) {
      return loadedSingle(this);
    }
    return orElse();
  }
}

abstract class LoadedSingle<T> implements TaskManagerState<T> {
  factory LoadedSingle(final T data) = _$LoadedSingleImpl<T>;

  T get data;

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedSingleImplCopyWith<T, _$LoadedSingleImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreatedImplCopyWith<T, $Res> {
  factory _$$CreatedImplCopyWith(
          _$CreatedImpl<T> value, $Res Function(_$CreatedImpl<T>) then) =
      __$$CreatedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$CreatedImplCopyWithImpl<T, $Res>
    extends _$TaskManagerStateCopyWithImpl<T, $Res, _$CreatedImpl<T>>
    implements _$$CreatedImplCopyWith<T, $Res> {
  __$$CreatedImplCopyWithImpl(
      _$CreatedImpl<T> _value, $Res Function(_$CreatedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CreatedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CreatedImpl<T> implements Created<T> {
  _$CreatedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'TaskManagerState<$T>.created(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatedImplCopyWith<T, _$CreatedImpl<T>> get copyWith =>
      __$$CreatedImplCopyWithImpl<T, _$CreatedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) loadedList,
    required TResult Function() emptyList,
    required TResult Function(T data) loadedSingle,
    required TResult Function(T data) created,
    required TResult Function(T data) updated,
    required TResult Function() deleted,
  }) {
    return created(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? loadedList,
    TResult? Function()? emptyList,
    TResult? Function(T data)? loadedSingle,
    TResult? Function(T data)? created,
    TResult? Function(T data)? updated,
    TResult? Function()? deleted,
  }) {
    return created?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? loadedList,
    TResult Function()? emptyList,
    TResult Function(T data)? loadedSingle,
    TResult Function(T data)? created,
    TResult Function(T data)? updated,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(LoadedList<T> value) loadedList,
    required TResult Function(EmptyList<T> value) emptyList,
    required TResult Function(LoadedSingle<T> value) loadedSingle,
    required TResult Function(Created<T> value) created,
    required TResult Function(Updated<T> value) updated,
    required TResult Function(Deleted<T> value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(LoadedList<T> value)? loadedList,
    TResult? Function(EmptyList<T> value)? emptyList,
    TResult? Function(LoadedSingle<T> value)? loadedSingle,
    TResult? Function(Created<T> value)? created,
    TResult? Function(Updated<T> value)? updated,
    TResult? Function(Deleted<T> value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(LoadedList<T> value)? loadedList,
    TResult Function(EmptyList<T> value)? emptyList,
    TResult Function(LoadedSingle<T> value)? loadedSingle,
    TResult Function(Created<T> value)? created,
    TResult Function(Updated<T> value)? updated,
    TResult Function(Deleted<T> value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class Created<T> implements TaskManagerState<T> {
  factory Created(final T data) = _$CreatedImpl<T>;

  T get data;

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatedImplCopyWith<T, _$CreatedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<T, $Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl<T> value, $Res Function(_$UpdatedImpl<T>) then) =
      __$$UpdatedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<T, $Res>
    extends _$TaskManagerStateCopyWithImpl<T, $Res, _$UpdatedImpl<T>>
    implements _$$UpdatedImplCopyWith<T, $Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl<T> _value, $Res Function(_$UpdatedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UpdatedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UpdatedImpl<T> implements Updated<T> {
  _$UpdatedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'TaskManagerState<$T>.updated(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<T, _$UpdatedImpl<T>> get copyWith =>
      __$$UpdatedImplCopyWithImpl<T, _$UpdatedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) loadedList,
    required TResult Function() emptyList,
    required TResult Function(T data) loadedSingle,
    required TResult Function(T data) created,
    required TResult Function(T data) updated,
    required TResult Function() deleted,
  }) {
    return updated(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? loadedList,
    TResult? Function()? emptyList,
    TResult? Function(T data)? loadedSingle,
    TResult? Function(T data)? created,
    TResult? Function(T data)? updated,
    TResult? Function()? deleted,
  }) {
    return updated?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? loadedList,
    TResult Function()? emptyList,
    TResult Function(T data)? loadedSingle,
    TResult Function(T data)? created,
    TResult Function(T data)? updated,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(LoadedList<T> value) loadedList,
    required TResult Function(EmptyList<T> value) emptyList,
    required TResult Function(LoadedSingle<T> value) loadedSingle,
    required TResult Function(Created<T> value) created,
    required TResult Function(Updated<T> value) updated,
    required TResult Function(Deleted<T> value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(LoadedList<T> value)? loadedList,
    TResult? Function(EmptyList<T> value)? emptyList,
    TResult? Function(LoadedSingle<T> value)? loadedSingle,
    TResult? Function(Created<T> value)? created,
    TResult? Function(Updated<T> value)? updated,
    TResult? Function(Deleted<T> value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(LoadedList<T> value)? loadedList,
    TResult Function(EmptyList<T> value)? emptyList,
    TResult Function(LoadedSingle<T> value)? loadedSingle,
    TResult Function(Created<T> value)? created,
    TResult Function(Updated<T> value)? updated,
    TResult Function(Deleted<T> value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class Updated<T> implements TaskManagerState<T> {
  factory Updated(final T data) = _$UpdatedImpl<T>;

  T get data;

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatedImplCopyWith<T, _$UpdatedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<T, $Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl<T> value, $Res Function(_$DeletedImpl<T>) then) =
      __$$DeletedImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<T, $Res>
    extends _$TaskManagerStateCopyWithImpl<T, $Res, _$DeletedImpl<T>>
    implements _$$DeletedImplCopyWith<T, $Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl<T> _value, $Res Function(_$DeletedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of TaskManagerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeletedImpl<T> implements Deleted<T> {
  _$DeletedImpl();

  @override
  String toString() {
    return 'TaskManagerState<$T>.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(NetworkExceptions error) failure,
    required TResult Function(List<T> data) loadedList,
    required TResult Function() emptyList,
    required TResult Function(T data) loadedSingle,
    required TResult Function(T data) created,
    required TResult Function(T data) updated,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(NetworkExceptions error)? failure,
    TResult? Function(List<T> data)? loadedList,
    TResult? Function()? emptyList,
    TResult? Function(T data)? loadedSingle,
    TResult? Function(T data)? created,
    TResult? Function(T data)? updated,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(NetworkExceptions error)? failure,
    TResult Function(List<T> data)? loadedList,
    TResult Function()? emptyList,
    TResult Function(T data)? loadedSingle,
    TResult Function(T data)? created,
    TResult Function(T data)? updated,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Failure<T> value) failure,
    required TResult Function(LoadedList<T> value) loadedList,
    required TResult Function(EmptyList<T> value) emptyList,
    required TResult Function(LoadedSingle<T> value) loadedSingle,
    required TResult Function(Created<T> value) created,
    required TResult Function(Updated<T> value) updated,
    required TResult Function(Deleted<T> value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Failure<T> value)? failure,
    TResult? Function(LoadedList<T> value)? loadedList,
    TResult? Function(EmptyList<T> value)? emptyList,
    TResult? Function(LoadedSingle<T> value)? loadedSingle,
    TResult? Function(Created<T> value)? created,
    TResult? Function(Updated<T> value)? updated,
    TResult? Function(Deleted<T> value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Failure<T> value)? failure,
    TResult Function(LoadedList<T> value)? loadedList,
    TResult Function(EmptyList<T> value)? emptyList,
    TResult Function(LoadedSingle<T> value)? loadedSingle,
    TResult Function(Created<T> value)? created,
    TResult Function(Updated<T> value)? updated,
    TResult Function(Deleted<T> value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class Deleted<T> implements TaskManagerState<T> {
  factory Deleted() = _$DeletedImpl<T>;
}
