import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/ui/views/splash/splash_view.dart';


void main(List<String> args) {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

