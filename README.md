# customizable_snackbar

[![pub package](https://img.shields.io/pub/v/customizable_snackbar.svg?style=flat-square)](https://pub.dev/packages/customizable_snackbar)
[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg?style=flat-square)](https://pub.dev/packages/very_good_analysis)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://opensource.org/licenses/MIT)

A Flutter package providing customizable snackbars with queue management, smooth animations, and dismissible functionality. Built with Riverpod for state management.

## Features

- 🎯 **Queue Management**: Automatically manages multiple snackbars with a configurable queue size
- 🎨 **Customizable**: Highly customizable snackbars with support for custom widgets, colors, and styles
- ⚡ **Smooth Animations**: Beautiful slide-in and fade animations using `flutter_animate`
- 👆 **Dismissible**: Swipe up to dismiss snackbars
- 🔄 **Auto-hide**: Automatically hides snackbars after a configurable duration
- 📱 **Responsive**: Automatically positions snackbars to avoid overlap
- 🎭 **Backdrop Blur**: Beautiful glassmorphism effect with backdrop blur

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  customizable_snackbar: ^1.0.0
```

Then run:

```bash
flutter pub get
```

## Setup

1. Wrap your app with `ProviderScope`:

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:customizable_snackbar/customizable_snackbar.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
```

2. Set up your app widget as a `ConsumerStatefulWidget` and configure the snackbar:

```dart
class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    CustomizableSnackbar.setRef(ref);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'My App',
      routerConfig: router,
      builder: (context, child) => Stack(
        children: [
          child!,
          const SnackbarOverlay(),
        ],
      ),
    );
  }
}
```

**Note**: If you're using `MaterialApp` instead of `MaterialApp.router`, you can add the overlay in a similar way:

```dart
class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();
    CustomizableSnackbar.setRef(ref);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        body: Stack(
          children: [
            const YourContent(),
            const SnackbarOverlay(),
          ],
        ),
      ),
    );
  }
}
```

## Usage

### Basic Example

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:customizable_snackbar/customizable_snackbar.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        CustomizableSnackbar.add(
          ref: ref,
          builder: (context) => const BasicSnackbar(
            title: 'Hello',
            message: 'This is a basic snackbar message',
          ),
        );
      },
      child: const Text('Show Snackbar'),
    );
  }
}
```

### Advanced Example with Customization

```dart
CustomizableSnackbar.add(
  ref: ref,
  builder: (context) => BasicSnackbar(
    title: 'Success',
    message: 'Operation completed successfully',
    leading: const Padding(
      padding: EdgeInsets.all(16),
      child: Icon(
        Icons.check_circle,
        color: Colors.green,
      ),
    ),
    backgroundColor: Colors.green.withOpacity(0.9),
    cornerRadius: 20,
    onTap: () {
      print('Snackbar tapped!');
    },
  ),
);
```

### Multiple Snackbars

The package automatically manages a queue of snackbars. When you add multiple snackbars, they stack vertically:

```dart
for (var i = 1; i <= 3; i++) {
  CustomizableSnackbar.add(
    ref: ref,
    builder: (context) => BasicSnackbar(
      title: 'Snackbar $i',
      message: 'This is snackbar number $i',
    ),
  );
}
```

### Custom Snackbar Widget

You can create completely custom snackbar widgets:

```dart
CustomizableSnackbar.add(
  ref: ref,
  builder: (context) => CustomSnackbar(
    builder: (context) => Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text(
        'Custom Snackbar',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
);
```

### Dismissing Snackbars

```dart
// Hide the first visible snackbar
CustomizableSnackbar.hide(ref: ref);

// Dismiss a specific snackbar by ID
CustomizableSnackbar.dismiss(ref: ref, id: snackbarId);

// Reset the entire queue
CustomizableSnackbar.resetQueue(ref: ref);
```

## API Reference

### CustomizableSnackbar

A class for managing snackbars.

#### Methods

- `setRef(WidgetRef ref)`: Sets the global WidgetRef for snackbar management
- `add({WidgetRef? ref, required WidgetBuilder builder})`: Adds a new snackbar to the queue
- `hide({WidgetRef? ref})`: Hides the first visible snackbar
- `dismiss({WidgetRef? ref, required String id})`: Dismisses a specific snackbar by ID
- `resetQueue({WidgetRef? ref})`: Resets the snackbar queue
- `hideFirst({WidgetRef? ref})`: Alias for `hide()`

### BasicSnackbar

A basic snackbar widget with title, message, and optional leading widget.

#### Parameters

- `title` (required): The title text to display
- `message` (optional): Message text to display below the title
- `leading` (optional): Widget to display before the title
- `onTap` (optional): Callback when the snackbar is tapped
- `padding` (optional): Padding override for the snackbar content
- `cornerRadius` (default: `15`): Border radius for the snackbar
- `cornerSmoothing` (default: `1`): Corner smoothing factor
- `backgroundColor` (optional): Background color override
- `contentAlignment` (optional): Content alignment override
- `titleStyle` (optional): Title text style override
- `messageStyle` (optional): Message text style override

### CustomSnackbar

A widget that positions a snackbar at the top of the screen.

#### Parameters

- `builder` (required): Builder function that creates the snackbar content

### SnackbarOverlay

A widget that manages the display and animation of snackbars. This should be added to your app's widget tree.

## Important Notes

- **Riverpod Required**: This package requires `flutter_riverpod` for state management
- **Queue Size**: The maximum queue size is 3 snackbars by default (configurable in `SnackbarQueue.kMaxQueueSize`)
- **Auto-hide**: Snackbars automatically hide after 5 seconds
- **Dismissible**: Users can swipe up to dismiss snackbars
- **Positioning**: Snackbars are automatically positioned to avoid overlap

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
