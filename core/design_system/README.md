# 🎨 `design_system` Package

The `design_system` package provides a centralized, reusable set of atomic UI components, theming utilities, and design tokens to ensure visual consistency across all apps in your Flutter project ecosystem.

---

## 📁 Directory Structure

```
design_system/
├── lib/
│   ├── themes/                  # Design tokens & theming setup
│   │   ├── color.dart           # App-wide color palette
│   │   ├── theme.dart           # ThemeData config (light/dark)
│   │   └── util.dart            # Theme utils and extensions
│   └── widget/                  # Atomic UI components
│       ├── app_button.dart      # Custom buttons
│       ├── app_image.dart       # Image helpers (e.g. from asset/network)
│       ├── app_text.dart        # Typography wrappers
│       └── app_textfield.dart   # Text input components
├── assets/
│   ├── images/                  # App-wide shared image assets
│   └── icons/                   # Shared icon assets (SVG, PNG, etc.)
├── pubspec.yaml
├── README.md
├── LICENSE
└── test/
```

---

## 📦 Purpose

This package is strictly for **design system** elements and contains:

* Atomic-level reusable widgets (e.g., `AppButton`, `AppTextField`)
* Centralized color, text, spacing, and theme tokens
* Common design assets like icons and images

> ❌ No business logic, app state, or screen-level components should exist here.

---

## 📁 Assets Usage

To make images and icons globally available from the design system:

```yaml
# pubspec.yaml
flutter:
  assets:
    - assets/images/
    - assets/icons/
```

Always use relative paths from the package root when referencing assets in this package.

---

## 🧱 Atomic Components Overview

| Component      | Type | Description                               |
| -------------- | ---- | ----------------------------------------- |
| `AppButton`    | Atom | Custom styled buttons (filled, outlined)  |
| `AppImage`     | Atom | Asset/network image wrapper with fallback |
| `AppText`      | Atom | Predefined text styles (headline, body)   |
| `AppTextField` | Atom | Themed, reusable input fields             |

---

## ✅ Best Practices

### 1. **Use Package Components Everywhere**

Instead of raw Flutter widgets:

```dart
// ❌ Bad
Text("Welcome", style: TextStyle(fontSize: 18));

// ✅ Good
AppText.body("Welcome");
```

---

### 2. **Consume Theme via Extensions**

Access theme tokens from `theme.dart` and `color.dart`:

```dart
final primaryColor = Theme.of(context).colorScheme.primary;
```

---

### 3. **Reference Assets via Package**

When importing in external apps, use the package prefix:

```dart
AppImage.local(
  'assets/images/logo.png',
  package: 'design_system',
);
```

---

### 4. **Do Not Add Business Logic**

Keep this package clean and focused on **design only**. If logic is necessary (like loading state, interactions), expose configuration props instead.

---

## 📦 How to Use in Other Packages

In your consuming app:

```yaml
dependencies:
  design_system:
    path: ../core/design_system
```

Use components:

```dart
import 'package:design_system/widget/app_text.dart';

AppText.body('Hello Design System');
```

And access assets:

```dart
AppImage.local('assets/icons/checkmark.png', package: 'design_system');
```

---

## 🚀 Extending the Package

When adding new components:

* Place them inside `lib/widget/`
* Follow atomic design rules
* Keep styles configurable through theming
* Add assets to the correct folder and update `pubspec.yaml`
