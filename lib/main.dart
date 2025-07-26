import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iroid_application/src/app.dart';

import 'package:iroid_application/src/core/service/env_service/env_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadEnv();
  runApp(ProviderScope(child: const MyApp()));
}

Future<void> loadEnv() async {
  await EnvService.loadEnv();
}
