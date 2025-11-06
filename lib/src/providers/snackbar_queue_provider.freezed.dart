// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snackbar_queue_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SnackbarQueueEntry {
  /// Unique identifier for the snackbar.
  String get id => throw _privateConstructorUsedError;

  /// Builder function for the snackbar content.
  WidgetBuilder get builder => throw _privateConstructorUsedError;

  /// Whether the snackbar is currently visible.
  bool get isVisible => throw _privateConstructorUsedError;

  /// Whether the snackbar has been dismissed.
  bool get isDismissed => throw _privateConstructorUsedError;

  /// Create a copy of SnackbarQueueEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnackbarQueueEntryCopyWith<SnackbarQueueEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackbarQueueEntryCopyWith<$Res> {
  factory $SnackbarQueueEntryCopyWith(
          SnackbarQueueEntry value, $Res Function(SnackbarQueueEntry) then) =
      _$SnackbarQueueEntryCopyWithImpl<$Res, SnackbarQueueEntry>;
  @useResult
  $Res call(
      {String id, WidgetBuilder builder, bool isVisible, bool isDismissed});
}

/// @nodoc
class _$SnackbarQueueEntryCopyWithImpl<$Res, $Val extends SnackbarQueueEntry>
    implements $SnackbarQueueEntryCopyWith<$Res> {
  _$SnackbarQueueEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnackbarQueueEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? builder = null,
    Object? isVisible = null,
    Object? isDismissed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      builder: null == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WidgetBuilder,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isDismissed: null == isDismissed
          ? _value.isDismissed
          : isDismissed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnackbarQueueEntryImplCopyWith<$Res>
    implements $SnackbarQueueEntryCopyWith<$Res> {
  factory _$$SnackbarQueueEntryImplCopyWith(_$SnackbarQueueEntryImpl value,
          $Res Function(_$SnackbarQueueEntryImpl) then) =
      __$$SnackbarQueueEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, WidgetBuilder builder, bool isVisible, bool isDismissed});
}

/// @nodoc
class __$$SnackbarQueueEntryImplCopyWithImpl<$Res>
    extends _$SnackbarQueueEntryCopyWithImpl<$Res, _$SnackbarQueueEntryImpl>
    implements _$$SnackbarQueueEntryImplCopyWith<$Res> {
  __$$SnackbarQueueEntryImplCopyWithImpl(_$SnackbarQueueEntryImpl _value,
      $Res Function(_$SnackbarQueueEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackbarQueueEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? builder = null,
    Object? isVisible = null,
    Object? isDismissed = null,
  }) {
    return _then(_$SnackbarQueueEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      builder: null == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WidgetBuilder,
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isDismissed: null == isDismissed
          ? _value.isDismissed
          : isDismissed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SnackbarQueueEntryImpl implements _SnackbarQueueEntry {
  const _$SnackbarQueueEntryImpl(
      {required this.id,
      required this.builder,
      required this.isVisible,
      required this.isDismissed});

  /// Unique identifier for the snackbar.
  @override
  final String id;

  /// Builder function for the snackbar content.
  @override
  final WidgetBuilder builder;

  /// Whether the snackbar is currently visible.
  @override
  final bool isVisible;

  /// Whether the snackbar has been dismissed.
  @override
  final bool isDismissed;

  @override
  String toString() {
    return 'SnackbarQueueEntry(id: $id, builder: $builder, isVisible: $isVisible, isDismissed: $isDismissed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackbarQueueEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.builder, builder) || other.builder == builder) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible) &&
            (identical(other.isDismissed, isDismissed) ||
                other.isDismissed == isDismissed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, builder, isVisible, isDismissed);

  /// Create a copy of SnackbarQueueEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackbarQueueEntryImplCopyWith<_$SnackbarQueueEntryImpl> get copyWith =>
      __$$SnackbarQueueEntryImplCopyWithImpl<_$SnackbarQueueEntryImpl>(
          this, _$identity);
}

abstract class _SnackbarQueueEntry implements SnackbarQueueEntry {
  const factory _SnackbarQueueEntry(
      {required final String id,
      required final WidgetBuilder builder,
      required final bool isVisible,
      required final bool isDismissed}) = _$SnackbarQueueEntryImpl;

  /// Unique identifier for the snackbar.
  @override
  String get id;

  /// Builder function for the snackbar content.
  @override
  WidgetBuilder get builder;

  /// Whether the snackbar is currently visible.
  @override
  bool get isVisible;

  /// Whether the snackbar has been dismissed.
  @override
  bool get isDismissed;

  /// Create a copy of SnackbarQueueEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnackbarQueueEntryImplCopyWith<_$SnackbarQueueEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SnackbarQueueState {
  /// List of snackbar entries in the queue.
  List<SnackbarQueueEntry> get queue => throw _privateConstructorUsedError;

  /// Create a copy of SnackbarQueueState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnackbarQueueStateCopyWith<SnackbarQueueState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackbarQueueStateCopyWith<$Res> {
  factory $SnackbarQueueStateCopyWith(
          SnackbarQueueState value, $Res Function(SnackbarQueueState) then) =
      _$SnackbarQueueStateCopyWithImpl<$Res, SnackbarQueueState>;
  @useResult
  $Res call({List<SnackbarQueueEntry> queue});
}

/// @nodoc
class _$SnackbarQueueStateCopyWithImpl<$Res, $Val extends SnackbarQueueState>
    implements $SnackbarQueueStateCopyWith<$Res> {
  _$SnackbarQueueStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnackbarQueueState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queue = null,
  }) {
    return _then(_value.copyWith(
      queue: null == queue
          ? _value.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<SnackbarQueueEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnackbarQueueStateImplCopyWith<$Res>
    implements $SnackbarQueueStateCopyWith<$Res> {
  factory _$$SnackbarQueueStateImplCopyWith(_$SnackbarQueueStateImpl value,
          $Res Function(_$SnackbarQueueStateImpl) then) =
      __$$SnackbarQueueStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SnackbarQueueEntry> queue});
}

/// @nodoc
class __$$SnackbarQueueStateImplCopyWithImpl<$Res>
    extends _$SnackbarQueueStateCopyWithImpl<$Res, _$SnackbarQueueStateImpl>
    implements _$$SnackbarQueueStateImplCopyWith<$Res> {
  __$$SnackbarQueueStateImplCopyWithImpl(_$SnackbarQueueStateImpl _value,
      $Res Function(_$SnackbarQueueStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackbarQueueState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queue = null,
  }) {
    return _then(_$SnackbarQueueStateImpl(
      queue: null == queue
          ? _value._queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<SnackbarQueueEntry>,
    ));
  }
}

/// @nodoc

class _$SnackbarQueueStateImpl implements _SnackbarQueueState {
  const _$SnackbarQueueStateImpl(
      {required final List<SnackbarQueueEntry> queue})
      : _queue = queue;

  /// List of snackbar entries in the queue.
  final List<SnackbarQueueEntry> _queue;

  /// List of snackbar entries in the queue.
  @override
  List<SnackbarQueueEntry> get queue {
    if (_queue is EqualUnmodifiableListView) return _queue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_queue);
  }

  @override
  String toString() {
    return 'SnackbarQueueState(queue: $queue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnackbarQueueStateImpl &&
            const DeepCollectionEquality().equals(other._queue, _queue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_queue));

  /// Create a copy of SnackbarQueueState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnackbarQueueStateImplCopyWith<_$SnackbarQueueStateImpl> get copyWith =>
      __$$SnackbarQueueStateImplCopyWithImpl<_$SnackbarQueueStateImpl>(
          this, _$identity);
}

abstract class _SnackbarQueueState implements SnackbarQueueState {
  const factory _SnackbarQueueState(
          {required final List<SnackbarQueueEntry> queue}) =
      _$SnackbarQueueStateImpl;

  /// List of snackbar entries in the queue.
  @override
  List<SnackbarQueueEntry> get queue;

  /// Create a copy of SnackbarQueueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnackbarQueueStateImplCopyWith<_$SnackbarQueueStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
