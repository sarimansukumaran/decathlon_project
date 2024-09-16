import 'package:decathlon/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = ColorConstants.PRIMARY_COLOR
      ..style = PaintingStyle.fill;

    final Path path = Path();

    // Draw triangle
    path.moveTo(0, 0); // Top-left corner (90-degree angle)
    path.lineTo(size.width, 0); // Top-right corner
    path.lineTo(0, size.height); // Bottom-left corner
    path.close(); // Close the path to form the triangle

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
