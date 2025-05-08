import 'package:network/interceptors/logger.dart';
import 'package:logger/logger.dart';


class ConsoleLogger implements AppLogger {
  final Logger _logger = Logger(printer: PrettyPrinter());

  @override
  void debug(String message) => _logger.d(message);

  @override
  void error(String message, [dynamic error]) => _logger.e(message, error: error);
}