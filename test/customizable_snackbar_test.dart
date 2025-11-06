import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:customizable_snackbar/customizable_snackbar.dart';

void main() {
  group('CustomizableSnackbar', () {
    testWidgets('creates a BasicSnackbar widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: BasicSnackbar(
                title: 'Test Title',
                message: 'Test Message',
              ),
            ),
          ),
        ),
      );
      expect(find.text('Test Title'), findsOneWidget);
      expect(find.text('Test Message'), findsOneWidget);
    });

    testWidgets('displays title without message', (WidgetTester tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: BasicSnackbar(
                title: 'Test Title',
              ),
            ),
          ),
        ),
      );
      expect(find.text('Test Title'), findsOneWidget);
    });

    testWidgets('displays leading widget when provided',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: BasicSnackbar(
                title: 'Test Title',
                leading: Icon(Icons.check),
              ),
            ),
          ),
        ),
      );
      expect(find.byIcon(Icons.check), findsOneWidget);
    });

    testWidgets('calls onTap when snackbar is tapped',
        (WidgetTester tester) async {
      var tapped = false;
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: BasicSnackbar(
                title: 'Test Title',
                onTap: () {
                  tapped = true;
                },
              ),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Test Title'));
      expect(tapped, isTrue);
    });

    testWidgets('uses custom corner radius', (WidgetTester tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: BasicSnackbar(
                title: 'Test Title',
                cornerRadius: 20,
              ),
            ),
          ),
        ),
      );
      final BasicSnackbar widget = tester.widget(find.byType(BasicSnackbar));
      expect(widget.cornerRadius, equals(20));
    });

    testWidgets('uses default corner radius', (WidgetTester tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: BasicSnackbar(
                title: 'Test Title',
              ),
            ),
          ),
        ),
      );
      final BasicSnackbar widget = tester.widget(find.byType(BasicSnackbar));
      expect(widget.cornerRadius, equals(15));
    });

    testWidgets('creates a CustomSnackbar widget', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: Stack(
                children: [
                  CustomSnackbar(
                    builder: (BuildContext context) =>
                        const Text('Custom Snackbar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      expect(find.text('Custom Snackbar'), findsOneWidget);
    });

    testWidgets('creates a CustomizableSnackbarOverlay widget',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: Scaffold(
              body: Stack(
                children: [
                  CustomizableSnackbarOverlay(),
                ],
              ),
            ),
          ),
        ),
      );
      expect(find.byType(CustomizableSnackbarOverlay), findsOneWidget);
    });
  });
}
