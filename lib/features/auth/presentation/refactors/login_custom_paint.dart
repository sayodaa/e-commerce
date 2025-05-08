import 'package:ecommerce/core/styles/colors/colors_dark_mode.dart';
import 'package:flutter/material.dart';

class AuthCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = ColorsDark.blueDark// اللون الأبيض
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width -40 , size.height) // بداية من أسفل اليمين
      ..lineTo(0, size.height ) // الخط السفلي (أسفل اليسار)
      ..lineTo(0, 70) // الخط العلوي (أعلى اليسار)
      ..close(); // قفل المسار

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
