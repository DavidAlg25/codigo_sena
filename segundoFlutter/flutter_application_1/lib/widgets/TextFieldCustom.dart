import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Global.colors.dart';

class Textfieldcustom extends StatelessWidget{
  final TextInputType type;
  final IconData icon;
  final Color appColor = Globalcolors.secondaryColorH;
  final bool pass;
  final String label;
  final String hint;
  final double radius = 50;
  Textfieldcustom(
    {required this.type,
    required this.icon,
    super.key,
    required this.label,
    required this.hint,
    this.pass = false}
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      keyboardType: type,
      obscureText: pass,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Globalcolors.mediumColorH,
          ),
          labelText: label,
          hintText: hint,
          filled: true,
          fillColor: Globalcolors.lightColor,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Globalcolors.lightColorH),
            borderRadius: BorderRadius.all(Radius.circular(radius))),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Globalcolors.mediumColor),
              borderRadius: BorderRadius.all(Radius.circular(radius)),
            ),
          ),
      );
  }
}