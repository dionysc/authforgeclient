//lib/core/constants/api_constants.dart
/// Centralized API configuration
import 'dart:io';
import 'package:flutter/foundation.dart';

class ApiConstants {
  static String get baseUrl {
    if (kIsWeb) {
      return "http://localhost:8000/api/v1";
    } else if (Platform.isAndroid) {
      return "http://10.0.2.2:8000/api/v1";
    } else {
      return "http://localhost:8000/api/v1";
    }
  }

  static const String login = "/auth/login";
  static const String register = "/auth/register";
  static const String refresh = "/auth/refresh";
  static const String logout = "/auth/logout";
  static const String me = "/auth/me";
}