// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snackbar_queue_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SnackbarQueueEntry {
  /// Unique identifier for the snackbar.
  String get id;

  /// Builder function for the snackbar content.
  WidgetBuilder get builder;

  /// Whether the snackbar is currently visible.
  bool get isVisible;

  /// Whether the snackbar has been dismissed.
  bool get isDismissed;

  /// Create a copy of SnackbarQueueEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnackbarQueueEntryCopyWith<SnackbarQueueEntry> get copyWith =>
      _$SnackbarQueueEntryCopyWithImpl<SnackbarQueueEntry>(
          this as SnackbarQueueEntry, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnackbarQueueEntry &&
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

  @override
  String toString() {
    return 'SnackbarQueueEntry(id: $id, builder: $builder, isVisible: $isVisible, isDismissed: $isDismissed)';
  }
}

/// @nodoc
abstract mixin class $SnackbarQueueEntryCopyWith<$Res> {
  factory $SnackbarQueueEntryCopyWith(
          SnackbarQueueEntry value, $Res Function(SnackbarQueueEntry) _then) =
      _$SnackbarQueueEntryCopyWithImpl;
  @useResult
  $Res call(
      {String id, WidgetBuilder builder, bool isVisible, bool isDismissed});
}

/// @nodoc
class _$SnackbarQueueEntryCopyWithImpl<$Res>
    implements $SnackbarQueueEntryCopyWith<$Res> {
  _$SnackbarQueueEntryCopyWithImpl(this._self, this._then);

  final SnackbarQueueEntry _self;
  final $Res Function(SnackbarQueueEntry) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      builder: null == builder
          ? _self.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WidgetBuilder,
      isVisible: null == isVisible
          ? _self.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isDismissed: null == isDismissed
          ? _self.isDismissed
          : isDismissed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnackbarQueueEntry].
extension SnackbarQueueEntryPatterns on SnackbarQueueEntry {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnackbarQueueEntry value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueEntry() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnackbarQueueEntry value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueEntry():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnackbarQueueEntry value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueEntry() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id, WidgetBuilder builder, bool isVisible, bool isDismissed)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueEntry() when $default != null:
        return $default(
            _that.id, _that.builder, _that.isVisible, _that.isDismissed);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id, WidgetBuilder builder, bool isVisible, bool isDismissed)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueEntry():
        return $default(
            _that.id, _that.builder, _that.isVisible, _that.isDismissed);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id, WidgetBuilder builder, bool isVisible, bool isDismissed)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueEntry() when $default != null:
        return $default(
            _that.id, _that.builder, _that.isVisible, _that.isDismissed);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SnackbarQueueEntry implements SnackbarQueueEntry {
  const _SnackbarQueueEntry(
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

  /// Create a copy of SnackbarQueueEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnackbarQueueEntryCopyWith<_SnackbarQueueEntry> get copyWith =>
      __$SnackbarQueueEntryCopyWithImpl<_SnackbarQueueEntry>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnackbarQueueEntry &&
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

  @override
  String toString() {
    return 'SnackbarQueueEntry(id: $id, builder: $builder, isVisible: $isVisible, isDismissed: $isDismissed)';
  }
}

/// @nodoc
abstract mixin class _$SnackbarQueueEntryCopyWith<$Res>
    implements $SnackbarQueueEntryCopyWith<$Res> {
  factory _$SnackbarQueueEntryCopyWith(
          _SnackbarQueueEntry value, $Res Function(_SnackbarQueueEntry) _then) =
      __$SnackbarQueueEntryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id, WidgetBuilder builder, bool isVisible, bool isDismissed});
}

/// @nodoc
class __$SnackbarQueueEntryCopyWithImpl<$Res>
    implements _$SnackbarQueueEntryCopyWith<$Res> {
  __$SnackbarQueueEntryCopyWithImpl(this._self, this._then);

  final _SnackbarQueueEntry _self;
  final $Res Function(_SnackbarQueueEntry) _then;

  /// Create a copy of SnackbarQueueEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? builder = null,
    Object? isVisible = null,
    Object? isDismissed = null,
  }) {
    return _then(_SnackbarQueueEntry(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      builder: null == builder
          ? _self.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WidgetBuilder,
      isVisible: null == isVisible
          ? _self.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isDismissed: null == isDismissed
          ? _self.isDismissed
          : isDismissed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$SnackbarQueueState {
  /// List of snackbar entries in the queue.
  List<SnackbarQueueEntry> get queue;

  /// Create a copy of SnackbarQueueState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SnackbarQueueStateCopyWith<SnackbarQueueState> get copyWith =>
      _$SnackbarQueueStateCopyWithImpl<SnackbarQueueState>(
          this as SnackbarQueueState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnackbarQueueState &&
            const DeepCollectionEquality().equals(other.queue, queue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(queue));

  @override
  String toString() {
    return 'SnackbarQueueState(queue: $queue)';
  }
}

/// @nodoc
abstract mixin class $SnackbarQueueStateCopyWith<$Res> {
  factory $SnackbarQueueStateCopyWith(
          SnackbarQueueState value, $Res Function(SnackbarQueueState) _then) =
      _$SnackbarQueueStateCopyWithImpl;
  @useResult
  $Res call({List<SnackbarQueueEntry> queue});
}

/// @nodoc
class _$SnackbarQueueStateCopyWithImpl<$Res>
    implements $SnackbarQueueStateCopyWith<$Res> {
  _$SnackbarQueueStateCopyWithImpl(this._self, this._then);

  final SnackbarQueueState _self;
  final $Res Function(SnackbarQueueState) _then;

  /// Create a copy of SnackbarQueueState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queue = null,
  }) {
    return _then(_self.copyWith(
      queue: null == queue
          ? _self.queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<SnackbarQueueEntry>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SnackbarQueueState].
extension SnackbarQueueStatePatterns on SnackbarQueueState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SnackbarQueueState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueState() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SnackbarQueueState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueState():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SnackbarQueueState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueState() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<SnackbarQueueEntry> queue)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueState() when $default != null:
        return $default(_that.queue);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<SnackbarQueueEntry> queue) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueState():
        return $default(_that.queue);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<SnackbarQueueEntry> queue)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SnackbarQueueState() when $default != null:
        return $default(_that.queue);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SnackbarQueueState implements SnackbarQueueState {
  const _SnackbarQueueState({required final List<SnackbarQueueEntry> queue})
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

  /// Create a copy of SnackbarQueueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SnackbarQueueStateCopyWith<_SnackbarQueueState> get copyWith =>
      __$SnackbarQueueStateCopyWithImpl<_SnackbarQueueState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SnackbarQueueState &&
            const DeepCollectionEquality().equals(other._queue, _queue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_queue));

  @override
  String toString() {
    return 'SnackbarQueueState(queue: $queue)';
  }
}

/// @nodoc
abstract mixin class _$SnackbarQueueStateCopyWith<$Res>
    implements $SnackbarQueueStateCopyWith<$Res> {
  factory _$SnackbarQueueStateCopyWith(
          _SnackbarQueueState value, $Res Function(_SnackbarQueueState) _then) =
      __$SnackbarQueueStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<SnackbarQueueEntry> queue});
}

/// @nodoc
class __$SnackbarQueueStateCopyWithImpl<$Res>
    implements _$SnackbarQueueStateCopyWith<$Res> {
  __$SnackbarQueueStateCopyWithImpl(this._self, this._then);

  final _SnackbarQueueState _self;
  final $Res Function(_SnackbarQueueState) _then;

  /// Create a copy of SnackbarQueueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? queue = null,
  }) {
    return _then(_SnackbarQueueState(
      queue: null == queue
          ? _self._queue
          : queue // ignore: cast_nullable_to_non_nullable
              as List<SnackbarQueueEntry>,
    ));
  }
}

// dart format on
