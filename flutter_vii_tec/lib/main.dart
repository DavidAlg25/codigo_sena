import 'package:flutter/material.dart';
import 'package:flutter_vii_tec/widgets/TextFieldinput.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: TextFieldInput(),
    );
  }
}
