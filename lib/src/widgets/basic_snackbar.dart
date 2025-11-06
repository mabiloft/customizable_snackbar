import 'dart:ui';

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

/// A basic snackbar implementation with a title, optional message and leading widget.
class BasicSnackbar extends StatelessWidget {
  /// Creates a new [BasicSnackbar] widget.
  const BasicSnackbar({
    required this.title,
    this.message,
    this.leading,
    this.onTap,
    this.padding,
    this.cornerRadius = 15,
    this.cornerSmoothing = 1,
    this.backgroundColor,
    this.contentAlignment,
    this.titleStyle,
    this.messageStyle,
    super.key,
  });

  /// The title text to display in the snackbar.
  final String title;

  /// Optional message text to display below the title.
  final String? message;

  /// Optional leading widget to display before the title.
  final Widget? leading;

  /// Optional callback when the snackbar is tapped.
  final VoidCallback? onTap;

  /// Optional padding override for the snackbar content.
  final EdgeInsets? padding;

  /// Optional border radius override for the snackbar.
  final double cornerRadius;

  /// Optional corner smoothing override for the snackbar.
  final double cornerSmoothing;

  /// Optional background color override for the snackbar.
  final Color? backgroundColor;

  /// Optional content alignment override for the snackbar.
  final CrossAxisAlignment? contentAlignment;

  /// Optional title style override for the snackbar.
  final TextStyle? titleStyle;

  /// Optional message style override for the snackbar.
  final TextStyle? messageStyle;

  /// Builds the basic snackbar widget with title, message, and optional leading widget.
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Stack(
            children: [
              ClipSmoothRect(
                radius: SmoothBorderRadius(
                  cornerRadius: cornerRadius,
                  cornerSmoothing: cornerSmoothing,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: ColoredBox(
                    color: backgroundColor ?? Colors.white.withValues(alpha: 0.75),
                    child: Padding(
                      padding: EdgeInsets.zero,
                      child: Row(
                        children: [
                          if (leading != null) leading!,
                          Expanded(
                            child: Padding(
                              padding: padding ??
                                  const EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 16,
                                  ),
                              child: Column(
                                crossAxisAlignment: contentAlignment ?? CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    style: titleStyle ??
                                        Theme.of(context).textTheme.titleMedium?.copyWith(
                                              color: Colors.black,
                                            ),
                                  ),
                                  if (message != null)
                                    Text(
                                      message!,
                                      style: messageStyle ??
                                          Theme.of(context).textTheme.bodyMedium?.copyWith(
                                                color: Colors.black,
                                              ),
                                      maxLines: 3,
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
