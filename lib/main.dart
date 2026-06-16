//lib/main.dart
import 'package:flutter/material.dart';

import 'core/network/dio_client.dart';
import 'features/auth/data/datasources/auth_remote_datasource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dioClient = DioClient();
  final datasource = AuthRemoteDataSource(dioClient.dio);

  try {
    print("Tentando login...");

    final result = await datasource.login(
      email: "user@test.com",
      password: "123456",
    );

    print("LOGIN SUCCESS");
    print("Access Token: ${result.accessToken}");
    print("Refresh Token: ${result.refreshToken}");
  } catch (e) {
    print("LOGIN ERROR: $e");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('AuthForge Client'),
        ),
      ),
    );
  }
}