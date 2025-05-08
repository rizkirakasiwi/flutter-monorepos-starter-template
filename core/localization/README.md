# 📦 Custom Localization Package

This package provides a lightweight and extensible solution for handling string localization in Flutter apps without relying on Flutter's default `intl` package. It supports JSON-based translations, dynamic string interpolation, and custom localization delegates.

---

## 📁 Directory Structure

```
localization/
├── lib/
│   ├── app_localizations.dart       # Core localization logic
│   ├── get_string.dart              # Extension to simplify usage in widgets
│   ├── localizations.dart           # (optional, use if managing multiple localization methods)
│   └── supported_language.dart      # Defines supported languages/locales
├── assets/
│   └── strings/
│       └── en.json                  # Translation files (JSON format)
├── test/                            # Tests for the localization logic
└── pubspec.yaml                     # Declares the package dependencies and assets
```

---

## 🚀 Getting Started

### 1. Add Localization Delegate

In your app (typically `main.dart`):

```dart
MaterialApp(
  localizationsDelegates: const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: supportedLocale,
  localeResolutionCallback: (locale, supportedLocales) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale?.languageCode &&
          supportedLocale.countryCode == locale?.countryCode) {
        return supportedLocale;
      }
    }
    return supportedLocales.first;
  },
  ...
);
```

---

### 2. Translation JSON Format

Place your translation files in `assets/strings/` (and declare them in `pubspec.yaml`).
Example: `en.json`

```json
{
  "greeting": "Hello, %s!",
  "welcome_message": "Welcome to our app, %s."
}
```

---

### 3. Fetching Localized Strings

#### Option 1: Using `AppLocalizations` directly

```dart
final greeting = AppLocalizations.of(context)?.getString("greeting", extra: ["John"]);
```

#### Option 2: Using extension (`get_string.dart`)

```dart
Text(context.getString("greeting", extra: ["John"]))
```

---

## 📌 Core Features

* ✅ JSON-based string storage for easy maintenance
* ✅ String interpolation via `sprintf`
* ✅ Extension method for cleaner access
* ✅ Device locale auto-resolution fallback
* ✅ Easy integration with Flutter `MaterialApp`

---

## 🔧 Supported Languages

Defined in `supported_language.dart`:

```dart
const supportedLanguage = ['en'];
const supportedLocale = [ Locale("en", "US") ];
```

Add more locales and JSON files as needed (e.g., `id.json`, `ar.json`, etc.)