import 'package:flutter_dotenv/flutter_dotenv.dart';

/// A service class for loading and managing environment variables from a .env file.
///
/// This class provides methods to initialize and access environment variables
/// using the `flutter_dotenv` package. It ensures that the .env file is loaded
/// correctly and provides a convenient way to retrieve environment variables
/// with error handling.
///
/// Example:
/// ```dart
/// await EnvService.loadEnv();
/// String? apiKey = EnvService.get('API_KEY');
/// ```
class EnvService {
  /// Loads the .env file into the application's environment.
  ///
  /// Throws an [Exception] if the .env file cannot be loaded due to file absence,
  static Future<void> loadEnv() async {
    try {
      await dotenv.load(fileName: 'env/.env');
    } catch (e) {
      throw Exception('Failed to load .env file: $e');
    }
  }

  static String? getApiToken() {
    return dotenv.env['API_TOKEN'];
  }

  static String? getBaseUrl() {
    return dotenv.env['BASE_URL'];
  }
}
