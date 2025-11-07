// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snackbar_queue_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider that manages the snackbar queue.

@ProviderFor(SnackbarQueue)
const snackbarQueueProvider = SnackbarQueueProvider._();

/// Provider that manages the snackbar queue.
final class SnackbarQueueProvider
    extends $NotifierProvider<SnackbarQueue, SnackbarQueueState> {
  /// Provider that manages the snackbar queue.
  const SnackbarQueueProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'snackbarQueueProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$snackbarQueueHash();

  @$internal
  @override
  SnackbarQueue create() => SnackbarQueue();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SnackbarQueueState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SnackbarQueueState>(value),
    );
  }
}

String _$snackbarQueueHash() => r'c313ea511237e68025ebf455cadf5d5b36eeec0d';

/// Provider that manages the snackbar queue.

abstract class _$SnackbarQueue extends $Notifier<SnackbarQueueState> {
  SnackbarQueueState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SnackbarQueueState, SnackbarQueueState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<SnackbarQueueState, SnackbarQueueState>,
        SnackbarQueueState,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
