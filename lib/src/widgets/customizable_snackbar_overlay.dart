import 'package:customizable_snackbar/src/providers/snackbar_queue_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A widget that manages the display and animation of snackbars.
class CustomizableSnackbarOverlay extends ConsumerStatefulWidget {
  /// Creates a new [CustomizableSnackbarOverlay] widget.
  const CustomizableSnackbarOverlay({super.key});

  /// Creates the state for this widget.
  ///
  /// Returns a state object that manages the snackbar queue and animations.
  @override
  ConsumerState<CustomizableSnackbarOverlay> createState() => _CustomizableSnackbarManagerState();
}

class _CustomizableSnackbarManagerState extends ConsumerState<CustomizableSnackbarOverlay> {
  final heights = <int, double>{};
  double totalHeight = 0;

  /// Builds the snackbar overlay that displays and manages snackbar animations.
  @override
  Widget build(BuildContext context) {
    final value = ref.watch(snackbarQueueProvider);

    ref.listen(snackbarQueueProvider, (previous, next) {
      if (next.queue.isEmpty) {
        setState(() {
          totalHeight = 0.0;
          heights.clear();
          debugPrint('totalHeight: $totalHeight');
        });
      }
    });

    return Positioned.fill(
      child: Stack(
        children: [
          for (var i = 0; i < value.queue.length; i++)
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              top: MediaQuery.of(context).padding.top + _getHeightOffset(i),
              left: 0,
              right: 0,
              child: IgnorePointer(
                ignoring: value.queue.where((element) => !element.isHiddenOrDismissed).isEmpty,
                child: Material(
                  color: Colors.transparent,
                  child: _MeasureSizeWidget(
                    onChange: (size) {
                      setState(() {
                        heights[i] = size.height;
                      });
                    },
                    child: (value.queue.elementAt(i).isDismissed)
                        ? const SizedBox.shrink()
                        : Dismissible(
                            direction: DismissDirection.up,
                            key: Key(value.queue.elementAt(i).id),
                            onDismissed: (direction) {
                              ref.read(snackbarQueueProvider.notifier).dismiss(value.queue.elementAt(i).id);
                            },
                            child: AnimatedOpacity(
                              opacity: value.queue.elementAt(i).isVisible ? 1 : 0,
                              duration: const Duration(milliseconds: 300),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: value.queue.elementAt(i).builder(context),
                              ).animate().moveY(
                                    begin: -50,
                                    end: 0,
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeOut,
                                  ),
                            ),
                          ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  double _getHeightOffset(int index) {
    var totalHeight = 0.0;
    final queue = ref.read(snackbarQueueProvider).queue;
    for (var i = 0; i < index; i++) {
      if (!queue[i].isHiddenOrDismissed) {
        totalHeight += heights[i] ?? 0;
      }
    }
    if (totalHeight > MediaQuery.of(context).size.height) {
      return MediaQuery.of(context).size.height;
    }

    return totalHeight;
  }
}

class _MeasureSizeWidget extends StatefulWidget {
  const _MeasureSizeWidget({
    required this.onChange,
    required this.child,
  });

  final ValueChanged<Size> onChange;
  final Widget child;

  @override
  _MeasureSizeWidgetState createState() => _MeasureSizeWidgetState();
}

class _MeasureSizeWidgetState extends State<_MeasureSizeWidget> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final size = context.size;
      if (size != null) {
        widget.onChange(size);
      }
    });
    return widget.child;
  }
}
