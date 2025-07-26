import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static final String tokenAccessKey = dotenv.env['API_TOKEN'] ?? '';

  static final String baseUrlAccessKey = dotenv.env['BASE_URL'] ?? '';

  /// Loads .env file
  static Future<void> loadEnv() async {
    try {
      await dotenv.load(fileName: 'env/.env');
    } catch (e) {
      throw Exception('Failed to load .env file');
    }
  }
}
