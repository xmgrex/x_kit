# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**x_kit** is a Flutter package (not an app) providing convenient widgets, utilities, and extensions to simplify common Flutter development tasks. Version 0.0.2, targeting Dart >=2.17.0 and Flutter >=1.17.0.

## Common Commands

### Development
```bash
# Install dependencies
flutter pub get

# Run analyzer/linter
flutter analyze

# Format code
dart format .

# Run all tests
flutter test

# Run specific test file
flutter test test/path/to/test_file.dart

# Check for outdated dependencies
flutter pub outdated
```

### Package Development
Since this is a package (not an app), there's no `flutter run`. Testing happens via:
- Unit tests in `test/`
- Integration in external Flutter apps that depend on this package
- Example apps if added to `example/` directory

## Architecture Overview

### Code Organization: Layer-Based with Part Files

The codebase uses a **part/part of** pattern for organizing related code within each module:

```dart
// lib/src/widgets/widgets.dart
library widgets;
part './image_from_url.dart';
part './loading_overlay.dart';
// ...

// lib/src/widgets/image_from_url.dart
part of widgets;
class ImageFromUrl extends StatelessWidget { ... }
```

This means:
- Files within a module share the same namespace
- When editing, you don't need to add imports between files in the same library
- The main file (e.g., `widgets.dart`) exports everything from its parts

### Main Entry Point: lib/x_kit.dart

The main entry point re-exports all modules AND third-party dependencies, making them accessible to package users:

```dart
// Users only need: import 'package:x_kit/x_kit.dart';
// They get flutter_riverpod, cached_network_image, etc. automatically
```

### Module Structure

**Layer-based organization** (horizontal slicing):

- **utils/** - Core utilities (logger, gaps, currency formatting)
- **extensions/** - Convenience methods on built-in types (BuildContext, DateTime, String, TextStyle, etc.)
- **styles/** - Typography systems (Material Design 3 + Cupertino)
- **widgets/** - Reusable UI components (with adaptive/platform-aware variants)
- **router/** - Custom page route transitions (fade, modal, bottom popup)
- **riverpod/** - State management helpers (AsyncValue extensions/widgets)
- **converter/** - JSON converters for Firebase types (Timestamp, DocumentReference)
- **firebase/** - Firebase integration and UI localization overrides

## Key Architectural Patterns

### 1. Extension-Based Convenience Layer

Extensions reduce boilerplate throughout the codebase:

**BuildContext Extension** (`src/extensions/context_extension.dart`):
```dart
// Instead of: Theme.of(context).colorScheme
// Use: context.colorScheme
```

**TextStyle Extension** (`src/extensions/text_style_extension.dart`):
```dart
// Provides Material Design 3 style getters on any TextStyle
// myStyle.displayLarge, myStyle.colorFromBackground(color), etc.
```

When adding new extensions, maintain the pattern of focused, single-purpose methods.

### 2. Platform-Aware/Adaptive Widgets

Widgets automatically adapt to iOS vs Android:

**XText** - Switches between Material and Cupertino text styles based on `Platform.isIOS`
**AdaptiveModalSheet** - Shows Cupertino or Material bottom sheets appropriately
**LoadingOverlay** - Uses CupertinoActivityIndicator on iOS, CircularProgressIndicator on Android

When creating new widgets, consider platform differences and use the adaptive pattern where appropriate.

### 3. Dual Text Styling System

**Material Design 3** (`src/styles/text_styles.dart`):
- Chainable API: `TextStyles.title.large.white.bold`
- Wraps TextStyle in `_MyTextStyle` to provide color/decoration modifiers
- Sizes: display, headline, title, label, body (each with large/medium/small)

**Cupertino** (`src/styles/cupertino_text_styles.dart`):
- Predefined iOS-specific styles with regular/bold variants
- Naming: title1, title2, title3, headline, body, subhead, etc.

When modifying styles, maintain consistency with Material Design 3 spec and iOS Human Interface Guidelines.

### 4. Wrapper Pattern for Third-Party Libraries

Custom widgets wrap external libraries with sensible defaults:

**ImageFromUrl** wraps `cached_network_image`:
- Handles empty URLs gracefully
- Provides default loading/error widgets
- Simplifies common use cases

**AsyncValueWidget** wraps Riverpod's `AsyncValue`:
- Declarative handling of loading/error/data states
- Reduces boilerplate in UI code

When adding new dependencies, consider creating wrapper widgets/utilities to provide a consistent API.

### 5. Riverpod State Management Integration

**AsyncValueUI Extension** (`src/riverpod/async_value_ui.dart`):
```dart
// In widget:
ref.listen<AsyncValue>(
  provider.select((state) => state.value),
  (_, state) => state.showAlertDialogOnError(context),
);
```

Auto-shows error dialogs when AsyncValue has an error. The pattern avoids manual error checking in every listener.

### 6. Firebase Type-Safe Converters

**TimestampField** (`src/converter/timestamp_converter.dart`):
- Converts between Firestore Timestamp, ISO8601 strings, and milliseconds
- Used with `@TimestampField()` annotation on json_serializable models

**DocumentReferenceField** (`src/converter/document_reference_converter.dart`):
- Converts between DocumentReference and string paths
- Used with `@DocumentReferenceField()` annotation

When working with Firestore models, use these converters for type safety.

### 7. Custom Route Transitions

Custom PageRoute implementations in `src/router/`:

- **FadePageRoute** - Fade transition (also integrates with go_router via `fadePageRoute()`)
- **ModalPageRoute** - Full-screen dialog-style
- **BottomPopupRoute** - Slide-up from bottom with drag-to-dismiss

All support proper animation curves and gesture handling.

## Dependencies and Stack

**State Management**: flutter_riverpod (^2.5.1)
**Backend**: Firebase (core, firestore, ui_localizations)
**Navigation**: go_router (^14.2.7)
**UI Libraries**: cached_network_image, modal_bottom_sheet, loading_overlay, expandable, adaptive_dialog
**Animations**: animate_do (^3.3.4)
**Icons**: Multiple icon packs (FluentUI, Phosphor, Iconly, Eva, Carbon)

The package re-exports these dependencies so users get them automatically via `import 'package:x_kit/x_kit.dart'`.

## Testing

Tests are located in `test/` directory. The codebase currently has minimal test coverage (`test/x_kit_test.dart` is a placeholder).

When adding new functionality:
- Write unit tests for utilities and extensions
- Write widget tests for UI components
- Test platform-specific behavior (iOS vs Android)
- Test error cases in AsyncValue helpers

## Localization

Firebase UI labels are overridden with Japanese translations in `src/firebase/firebase_ui_label_overrides.dart`. The package supports English and Japanese (ja) locales.

When adding UI strings, consider localization needs and follow the existing pattern.

## Code Style Notes

- Uses **part/part of** extensively - don't add imports between files in the same library
- Prefer **extension methods** over helper functions for type-specific utilities
- Maintain **platform awareness** - check `Platform.isIOS` when behavior should differ
- Follow **Material Design 3** naming for text styles (display, headline, title, body, label)
- Use **chainable APIs** where appropriate (see TextStyles implementation)
- Wrap third-party libraries to provide **consistent, simplified APIs**

## Important Files

- **lib/x_kit.dart** - Main entry point, aggregates all exports
- **lib/src/styles/text_styles.dart** - Material Design 3 typography system
- **lib/src/extensions/context_extension.dart** - BuildContext convenience methods
- **lib/src/riverpod/async_value_ui.dart** - AsyncValue error handling pattern
- **pubspec.yaml** - Package configuration and dependencies
