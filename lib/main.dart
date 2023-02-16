import 'package:bmicalculator_with_animation/views/Home_Page.dart';
import 'package:bmicalculator_with_animation/views/Second_Page.dart';
import 'package:bmicalculator_with_animation/views/Splash_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash_screen',
    routes: {
      '/': (context) => const HomePage(),
      'splash_screen': (context) => const SplashScreenPage(),
      'second_page': (context) => const SecondPage(),
    },
  ));
}
