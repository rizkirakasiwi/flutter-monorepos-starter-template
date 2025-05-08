# ♻️ Shared Package

A minimal utility package that re-exports commonly used dependencies—primarily for dependency unification and consistency across a multi-package Flutter project managed with Melos.

---

## 📦 Purpose

The **shared** package simplifies dependency management in a monorepo setup. By exporting selected packages (e.g., `get_it`, `riverpod`, etc.) from a single point, this pattern avoids version conflicts and promotes consistent usage across all internal packages.

---

## 📁 Directory Structure

```
shared/
├── lib/
│   └── shared.dart        # Re-export dependencies here
├── test/                  # (Optional) unit tests
├── pubspec.yaml
└── README.md              # Package documentation
```

---

## 🔑 Key File

### `shared.dart`

```dart
export 'package:get_it/get_it.dart';
```

This file is responsible for exporting shared dependencies. Other packages can now import dependencies like this:

```dart
import 'package:shared/shared.dart';

final getIt = GetIt.instance;
```

---

## ✅ Benefits

* ✅ **Centralized dependency management**
* ✅ **Avoid version mismatches across packages**
* ✅ **Improved readability and maintainability**
* ✅ **Reduces boilerplate in each package**

---

## 🧩 Example Usage in Another Package

Instead of:

```dart
import 'package:get_it/get_it.dart';
```

You can now do:

```dart
import 'package:shared/shared.dart';
```

This makes it easier to update dependency versions across the workspace by modifying only one package.

---

## 🛠️ Recommended Enhancements

You can extend `shared.dart` to include:

```dart
export 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:equatable/equatable.dart';
export 'package:intl/intl.dart';
```

Only include packages that are:

* Widely used across modules
* Low-level utilities
* Stable and unlikely to change often