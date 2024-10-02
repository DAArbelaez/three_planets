import 'dart:async';

import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

class ErrorHandler {
  void handleAndRecordError({
    required Object error,
    required String functionName,
    String? message,
  }) {
    var logger = Logger();

    final errorMessage = _getErrorMessage(error, functionName, message);

    logger.e(errorMessage, error: error);
  }

  /// Takes an [Exception] and a [String] representing the function name where the error occurred.
  String _getErrorMessage(Object error, String functionName, String? customMessage) {
    String initialErrorMessage = 'Exception in $functionName.';
    String errorMessage = error.toString();

    switch (error) {
      case TypeError _:
        {
          errorMessage = 'TypeError in $functionName while mapping.';
        }
      case TimeoutException _:
        {
          errorMessage = 'TimeoutException in $functionName.';
        }
      case PlatformException _:
        {
          initialErrorMessage = 'PlatformException in $functionName.';
          errorMessage = '${error.message}';
        }
    }
    var message = customMessage != null ? "\n\n$customMessage" : "";
    return "$initialErrorMessage Error: $errorMessage$message";
  }
}
