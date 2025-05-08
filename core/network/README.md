# 🌐 Network Package

A modular, extensible networking package for Flutter projects, built with `Dio` and designed to enforce abstraction, reusability, and maintainable architecture. It features custom HTTP client interfaces, interceptors, service abstraction, and centralized logging.

---

## 📁 Directory Structure

```
network/
├── lib/
│   ├── client/                       # HTTP client interface
│   │   └── http_client.dart
│   ├── di/                           # Dependency injection (bindings not shown here)
│   ├── interceptors/                # Dio interceptors
│   │   ├── dio_interceptor.dart
│   │   └── logger.dart              # AppLogger interface
│   ├── library/                     # Reusable components
│   │   ├── console_logger.dart      # Concrete logger
│   │   ├── dio_client.dart          # Dio-based HttpClient implementation
│   │
│   ├── models/                      # Data structures
│   │   └── network_response.dart
│   ├── service/                     # Service abstractions and implementations
│       ├── user_service.dart
│       └── user_service_impl.dart
```

---

## 🚀 Components

### 1. `HttpClient` – Abstract Client Interface

```dart
abstract class HttpClient {
  Future<Response> get(String path, {Map<String, dynamic>? headers});
  Future<Response> post(String path, {dynamic body, Map<String, dynamic>? headers});
}
```

Provides an interface to decouple networking logic from Dio directly.

---

### 2. `DioClient` – Concrete HTTP Implementation

```dart
class DioClient implements HttpClient {
  // Internally uses Dio to make requests.
}
```

Handles real HTTP requests via Dio while abstracting logic behind `HttpClient`.

---

### 3. `AppLogger` – Logging Interface

```dart
abstract class AppLogger {
  void debug(String message);
  void error(String message, [dynamic error]);
}
```

Enables pluggable logging implementations.

---

### 4. `ConsoleLogger` – Logger Implementation

```dart
class ConsoleLogger implements AppLogger {
  final Logger _logger = Logger(printer: PrettyPrinter());

  void debug(String message);
  void error(String message, [dynamic error]);
}
```

Prints readable logs for debugging purposes.

---

### 5. `DioInterceptor` – Request/Response Logging

```dart
class DioInterceptor extends Interceptor {
  final AppLogger logger;

  DioInterceptor(this.logger);

  // Logs requests, responses, and errors
}
```

Plugged into Dio to log every interaction using `AppLogger`.

---

### 6. `NetworkResponse` – Standard Response Wrapper

```dart
class NetworkResponse {
  int? statusCode;
  String? statusMessage;
  dynamic value;
}
```

A consistent structure for handling and transforming responses from APIs.

---

### 7. `UserService` – Abstracted Domain Service

```dart
abstract class UserService {
  Future<NetworkResponse> getProfile();
}
```

Defines business-focused operations, decoupled from lower networking layers.

---

## 🧱 Architectural Benefits

* ✅ **Clean separation of concerns**
  (UI → Service → HttpClient → Dio)

* ✅ **Replaceable logger and client**
  (Useful for testing or adapting for other platforms)

* ✅ **Testable services**
  (Thanks to abstract interfaces)

* ✅ **Single response model**
  (`NetworkResponse` simplifies response handling)

---

## ✅ Example Usage

> In a higher-level `Repository` or `Bloc`:

```dart
final userService = UserServiceImpl(httpClient: DioClient(), logger: ConsoleLogger());

final profile = await userService.getProfile();
print(profile.value); // User data
```

---

## 🔧 Dependency Injection

Use the `di` folder to bind all components via your DI framework (e.g., `get_it`).