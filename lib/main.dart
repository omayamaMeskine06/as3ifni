import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'core/theme/app_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/localization/generated/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      title: 'As3ifni',
      debugShowCheckedModeBanner: false,
        // Supported languages
     supportedLocales: const [
       Locale('en'),
       Locale('ar'),
     ],
      // Localization delegates
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      ],
      home: HomeScreen());
    }}
      