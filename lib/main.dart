import 'package:flutter/material.dart';
import 'core/network/dio_client.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dioClient = DioClient();

  try {
    final response = await dioClient.dio.get('/auth/me');
    print(response.data);
  } catch (e) {
    print('Erro esperado (não autenticado): $e');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('AuthForge Client')),
      ),
    );
  }
}