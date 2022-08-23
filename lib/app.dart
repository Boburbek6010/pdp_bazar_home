import 'package:flutter/material.dart';
import 'package:pdp_bazar_home/pages/history/history_page.dart';
import 'package:pdp_bazar_home/pages/main/main_page.dart';
import 'package:pdp_bazar_home/pages/profile/profile_page.dart';
import 'package:pdp_bazar_home/pages/splash_page.dart';
import 'package:pdp_bazar_home/pages/welcome_page.dart';

import 'pages/home/home_page.dart';


class PDPBazarHome extends StatelessWidget {
  const PDPBazarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainPage(),
      routes: {
        HomePage.id:(context) => HomePage(),
        HistoryPage.id:(context) => HistoryPage(),
        ProfilePage.id:(context) => ProfilePage(),
        MainPage.id:(context) => MainPage(),
        SplashPage.id:(context) => SplashPage(),
        WelcomePage.id:(context) => const WelcomePage(),
      },
    );
  }
}
