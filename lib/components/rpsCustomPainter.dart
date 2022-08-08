import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6792009, size.height * 0.04347380);
    path_0.cubicTo(
        size.width * 0.4705047,
        size.height * -0.05217620,
        size.width * 0.1394437,
        size.height * 0.03744929,
        0,
        size.height * 0.09421841);
    path_0.lineTo(0, size.height * 0.9985836);
    path_0.lineTo(size.width, size.height * 0.9985836);
    path_0.lineTo(size.width, size.height * 0.1074258);
    path_0.cubicTo(
        size.width * 0.9984322,
        size.height * 0.07081558,
        size.width * 0.9320794,
        size.height * 0.006770892,
        size.width * 0.6792009,
        size.height * 0.04347380);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = Color(0xffEDF9FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffEDF9FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
