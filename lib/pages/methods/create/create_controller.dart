import 'package:flutter/material.dart';

class CreateController {
  final timestamp = DateTime.now().toIso8601String();

  CreateController() {
    debugPrint('Criando a instância de CreateController.');
  }
}
