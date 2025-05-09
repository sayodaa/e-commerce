import 'package:flutter/material.dart';

class AuthCustomPainter extends CustomPainter {
  AuthCustomPainter({required this.color, super.repaint});

  final Color color;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width -30 , size.height) //* بداية من أسفل اليمين
      ..lineTo(0, size.height ) //* الخط السفلي (أسفل اليسار)
      ..lineTo(0, 80) //* الخط العلوي (أعلى اليسار)
      ..close(); //* قفل المسار

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
