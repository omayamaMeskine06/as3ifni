import 'package:flutter/material.dart';

class EmergencySiren extends StatelessWidget {
  final bool isActive;
  final VoidCallback onPressed;

  const EmergencySiren({
    super.key,
    required this.isActive,
    required this.onPressed,
  });
}