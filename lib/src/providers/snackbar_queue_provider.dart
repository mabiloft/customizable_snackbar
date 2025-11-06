import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'snackbar_queue_provider.freezed.dart';
part 'snackbar_queue_provider.g.dart';

/// A snackbar queue entry.
@freezed
class SnackbarQueueEntry with _$SnackbarQueueEntry {
  /// Creates a new snackbar queue entry.
  const factory SnackbarQueueEntry({
    /// Unique identifier for the snackbar.
    required String id,

    /// Builder function for the snackbar content.
    required WidgetBuilder builder,

    /// Whether the snackbar is currently visible.
    required bool isVisible,

    /// Whether the snackbar has been dismissed.
    required bool isDismissed,
  }) = _SnackbarQueueEntry;
}

/// Extension methods for [SnackbarQueueEntry].
extension SnackbarQueueEntryX on SnackbarQueueEntry {
  /// Returns true if the snackbar is either hidden or dismissed.
  bool get isHiddenOrDismissed => !isVisible || isDismissed;
}

/// The snackbar queue state.
@freezed
class SnackbarQueueState with _$SnackbarQueueState {
  /// Creates a new snackbar queue state.
  const factory SnackbarQueueState({
    /// List of snackbar entries in the queue.
    required List<SnackbarQueueEntry> queue,
  }) = _SnackbarQueueState;
}

/// Provider that manages the snackbar queue.
@riverpod
class SnackbarQueue extends _$SnackbarQueue {
  /// Maximum number of snackbars that can be visible at once.
  static const kMaxQueueSize = 3;

  /// Builds the initial snackbar queue state.
  @override
  SnackbarQueueState build() {
    return const SnackbarQueueState(queue: []);
  }

  /// Adds a new snackbar to the queue.
  void add(WidgetBuilder builder, {String? id}) {
    _cleanQueueIfNeeded();
    final visibleQueue =
        state.queue.where((element) => element.isVisible).toList();
    if (visibleQueue.length >= kMaxQueueSize) {
      hideFirst();
    }
    final newQueue = List<SnackbarQueueEntry>.from(state.queue)
      ..add(
        SnackbarQueueEntry(
          id: id ?? _getNewId(),
          builder: builder,
          isVisible: true,
          isDismissed: false,
        ),
      );
    state = state.copyWith(queue: newQueue);
    Future.delayed(const Duration(milliseconds: 5000), hideFirst);
  }

  String _getNewId() {
    return const Uuid().v4();
  }

  /// Resets the queue to empty.
  void resetQueue() {
    state = state.copyWith(queue: []);
  }

  /// Hides the first visible snackbar in the queue.
  void hideFirst() {
    final indexOfFirstVisibleItem =
        state.queue.indexWhere((element) => element.isVisible);
    if (indexOfFirstVisibleItem == -1) return;

    final newQueue = List<SnackbarQueueEntry>.from(state.queue);
    newQueue[indexOfFirstVisibleItem] =
        newQueue[indexOfFirstVisibleItem].copyWith(isVisible: false);
    state = state.copyWith(queue: newQueue);
  }

  /// Hides a specific snackbar by its ID.
  void hide(String id) {
    final indexOfItemToHide =
        state.queue.indexWhere((element) => element.id == id);
    if (indexOfItemToHide == -1) return;

    final newQueue = List<SnackbarQueueEntry>.from(state.queue);
    final itemToHide = newQueue[indexOfItemToHide];
    if (itemToHide.isDismissed) {
      return;
    }
    newQueue[indexOfItemToHide] = itemToHide.copyWith(isVisible: false);
    state = state.copyWith(queue: newQueue);
  }

  /// Dismisses a specific snackbar by its ID.
  void dismiss(String id) {
    final indexOfItemToDismiss =
        state.queue.indexWhere((element) => element.id == id);
    if (indexOfItemToDismiss == -1) return;

    final newQueue = List<SnackbarQueueEntry>.from(state.queue);
    newQueue[indexOfItemToDismiss] =
        newQueue[indexOfItemToDismiss].copyWith(isDismissed: true);
    state = state.copyWith(queue: newQueue);
  }

  void _cleanQueueIfNeeded() {
    final newQueue =
        state.queue.where((element) => !element.isHiddenOrDismissed).toList();
    if (newQueue.isEmpty) {
      state = state.copyWith(queue: []);
    }
  }
}
