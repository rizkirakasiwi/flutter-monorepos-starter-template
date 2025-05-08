# 🏁 Flutter Monorepo Starter Template

Welcome to the **Flutter Modular Monorepo**!
This repository is structured to support **scalable**, **maintainable**, and **testable** Flutter applications using Clean Architecture principles and modularization best practices using Flutter [workspaces](https://dart.dev/tools/pub/workspaces) and [Melos](https://github.com/invertase/melos).

> 📘 **Note:** Each package/module in this repository comes with its own documentation to help you understand its purpose, usage, and integration. Refer to each package’s `README.md` or inline comments for details.
---

## Specification

```yaml
environment:
  sdk: ^3.7.2
  flutter: ">=1.17.0"

dev_dependencies:
  melos: ^7.0.0-dev.8
```

---

## 📁 Project Structure

```
FLUTTER-MONOREPOS-STARTER/
├── app/                 # Main Flutter application entry
├── config/              # Configuration and environment setup
├── core/                # Core reusable features
│   ├── design_system/     # UI design system (widgets, themes, tokens)
│   ├── localization/      # Internationalization support
│   ├── network/           # API client abstraction layer
│   └── utilities/         # Helpers, extensions, general-purpose utils
├── packages/            # (Reserved for additional packages)
├── shared/              # Shared dependencies re-export (e.g. get_it)
├── pubspec.yaml         # Workspace + melos config
├── README.md            # Project documentation
```

---

## 🧱 Modular Workspace Setup

### 📦 `pubspec.yaml` (root)

This file defines the **Melos workspace**, registering all packages and modules to be included:

```yaml
workspace:
  - app
  - config
  - shared
  - core/design_system
  - core/network
  - core/utilities
  - core/localization
```

### 📜 `melos` config

Automates common workflows and enforces consistent environments:

```yaml
scripts:
  build_runner:
    run: melos exec -- "dart run build_runner build"
    packageFilters:
      dependsOn:
        - "build_runner"
```

---

## 🔩 Core Module Highlights

### 🧩 `core/network`

A modular and testable API layer:

* `HttpClient` interface for abstraction
* `DioClient` implementation
* Logging interceptor (`DioInterceptor`)
* Response model (`NetworkResponse`)
* `UserService` and its implementation

### 🎨 `core/design_system`

Reusable UI components, typography, colors, and layout primitives.

### 🌐 `core/localization`

Supports internationalization using packages like `intl`.

### 🛠 `core/utilities`

Shared utility functions, extensions, and constants.

---

## 🔁 Shared Dependencies

### 📦 `packages/shared`

```dart
// shared.dart
export 'package:get_it/get_it.dart';
```

Used to centralize dependency imports to avoid version mismatches and reduce duplication.

Example usage in any module:

```dart
import 'package:shared/shared.dart';
```

---

## ⚙️ Config Module

### 📁 `config`

Handles environment configurations and secrets using [`envied`](https://pub.dev/packages/envied).

---

## 🚀 App Module

### 📱 `app`

The main application code that composes all the core modules and shared utilities. This can be cloned or reused for multi-brand setups.

---

## 🧪 DevTooling & Linting

* `flutter_lints`: Enforces code quality.
* `build_runner`: For code generation.
* `envied_generator`: For config/env class generation.

Run code generation via:

```bash
melos run build_runner
```

---

## ✅ Benefits

* 🚀 **Fast onboarding** with predefined structure
* 🧩 **Clear module boundaries** for maintainability
* 🔁 **Dependency reusability** via `shared` package
* 📦 **Workspace automation** with `melos`
* 🔍 **Easier testing** with isolated responsibilities

---

## 📖 Getting Started

```bash
# Install dependencies
melos bootstrap

# Generate code (e.g., env or freezed)
melos run build_runner
```

---
## Package Folder recomendation stucture


### 📦 Structure A – Layer-Oriented (Global Layers)

```plaintext
monorepo/
├── core/                  # Independent, reusable packages (no app logic)
│   ├── design_system/     # UI components, themes
│   ├── network/           # API clients, interceptors
│   ├── localization/      # Internationalization
│   └── utilities/         # Logging, extensions, constants
│
├── packages/
│   ├── data/              # All data-layer logic for the app
│   ├── domain/            # All domain-layer logic (pure Dart)
│   └── presentation/      # UI screens, widgets, states
│
├── app/
│   ├── app_setup/         # DI, Hive, and provider setup
│   └── main.dart          # App entry point
│
├── shared/                # Shared dependency
└── config/                # Flavors, env vars, project settings
````

**✅ Use this when:**

* Project is small to medium
* You want a centralized structure for domain, data, and presentation
* Teams are structured around layers (e.g., backend, frontend, architecture)

---

### 🧩 Structure B – Feature-Oriented (Self-contained Features)

```plaintext
monorepo/
├── core/                  # Reusable, non-feature-specific logic
│   ├── design_system/
│   ├── network/
│   ├── localization/
│   └── utilities/
│
├── features/
│   ├── auth/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── profile/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── ...                # Other feature modules
│
├── app/
│   ├── app_setup/
│   └── main.dart
│
├── shared/
└── config/
```

**✅ Use this when:**

* Project is large or expected to grow
* You want self-contained, reusable, and isolated features
* Teams are split by feature (e.g., Auth Team, Profile Team)

---

## 💡 Decision Guide

| Scenario                                  | Use Structure A | Use Structure B      |
| ----------------------------------------- | ---------------- | -------------------- |
| App size is small                         | ✅               | ❌                    |
| Want centralized logic per layer          | ✅               | ❌                    |
| Teams are organized by app features       | ❌               | ✅                    |
| Need to isolate, test, and scale features | ❌               | ✅                    |
| Need to share domain logic between apps   | ✅               | ✅ (with core domain) |

---

## 🚀 Getting Started

1. Clone the repo

   ```bash
   git clone <repo-url>
   ```

2. Bootstrap dependencies (using [`melos`](https://melos.invertase.dev/))

   ```bash
   melos bootstrap
   ```

3. Run the app

   ```bash
   flutter run -t app/main_dev.dart
   ```

---

## 🤝 Contribution Guidelines

* Use the appropriate structure (A or B) depending on the feature you're building.
* All shared logic must live in `core/`.
* Prefer feature encapsulation (`features/`) for new modules if you're using Structure B.
* Each module should have its own `README.md` explaining its purpose and dependencies.
* PRs must be reviewed by at least one maintainer.

---

## 📂 Notes

* All layers should follow Clean Architecture principles:

  * `Domain` knows nothing about `Data` or `Presentation`
  * `Presentation` depends on `Domain` only
  * `Data` implements `Domain` interfaces

* Core packages must be pure and reusable — avoid app-specific logic here.

---

## 📬 Questions?

Open an issue or reach out to the maintainers. Happy coding!
