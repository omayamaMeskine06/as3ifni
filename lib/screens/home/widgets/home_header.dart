import 'package:flutter/material.dart';
// import 'package:as3ifni/core/localization/generated/app_localizations.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Logo
          Image.asset(
            'assets/images/as3ifni_symbol_only.png',
            width: 45,
            height: 45,
            fit: BoxFit.contain,
          ),

          const SizedBox(width: 8),

          // Brand name
          Image.asset(
            'assets/images/logo_text_only.png',
            height: 35,
            fit: BoxFit.contain,
          ),

          const Spacer(),

          // Notifications
          IconButton(
            onPressed: () {
            null;
            },
            icon: const Icon(Icons.notifications_none),
            iconSize: 27,
          ),
        ],
      ),
    );
  }
}