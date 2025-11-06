import 'package:flutter/material.dart';

/// A widget that positions a snackbar at the top of the screen.
class CustomSnackbar extends StatelessWidget {
  /// Creates a new [CustomSnackbar] widget.
  const CustomSnackbar({
    required this.builder,
    super.key,
  });

  /// The builder function that creates the snackbar content.
  final WidgetBuilder builder;

  /// Builds the custom snackbar widget positioned at the top of the screen.
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: builder(context),
    );
  }
}
