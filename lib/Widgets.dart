import 'package:flutter/material.dart';
import 'package:grocery/colors.dart';

// ignore: non_constant_identifier_names
TextWhite(String label, double size) {
  return Text(
    label,
    style: TextStyle(fontSize: size, color: Colors.white),
  );
}

textBlack(String label, double size) {
  return Text(
    label,
    style: TextStyle(
      fontSize: size,
      color: Colors.black,
    ),
  );
}

boldBlack(String label, double size) {
  return Text(
    label,
    style: TextStyle(
        fontSize: size, color: Colors.black, fontWeight: FontWeight.bold),
  );
}

Sqirlce(Widget sub, double x, y) {
  return Container(
      height: y * .73,
      width: x * .95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: sub);
}

SpaceBox(double h) {
  return SizedBox(
    height: h,
  );
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = primaryAccent
      ..style = PaintingStyle.fill;

    Path path = Path();

    path.moveTo(0, 20);

    path.quadraticBezierTo(size.width * 0.10, 0, size.width * 0.15, 0); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: const Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
