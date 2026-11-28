import 'package:flutter/material.dart';
import 'widgets/home_header.dart';
// import 'widgets/welcome_section.dart';
// import 'widgets/sos_button.dart';
// import 'widgets/emergency_siren.dart';
// import 'widgets/feature_grid.dart';
// import 'widgets/feature_card.dart';
// import 'widgets/news_section.dart';
// import 'widgets/bottom_navigation.dart';
// import 'package:as3ifni/core/localization/generated/app_localizations.dart';

class HomeScreen extends StatefulWidget{
const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body:HomeHeader(),
     
    );
  }
}