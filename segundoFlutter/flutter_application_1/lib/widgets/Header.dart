import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Global.colors.dart';

class HeaderLogin extends StatelessWidget {
  const HeaderLogin({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement 
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: CustomPaint(
        painter: HederLoginPainter(),
      ),
    );
  }
}

class HederLoginPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Globalcolors.primaryColorH;
    paint.style = PaintingStyle.fill;
    final path = Path();
    path.lineTo(0, size.height * 0.8);
    path.lineTo(
      size.height * 1.0,
      size.width * 0.2,
    );
    path.lineTo(size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
