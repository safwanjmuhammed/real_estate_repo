import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iroid_application/src/app.dart';
import 'package:iroid_application/src/config/app_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  loadEnv();
  runApp(ProviderScope(child: const MyApp()));
}

Future<void> loadEnv() async => await AppConfig.loadEnv();
