import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/views/login/Login.dart';
import 'package:flutter_application_1/utils/Global.colors.dart';

class SplashView extends StatelessWidget{
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Get.to(const LoginView());
    });
    return Scaffold(
      backgroundColor: Globalcolors.primaryColorH,
      body: const Center(
        child: Text(
          'logo',
          style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}