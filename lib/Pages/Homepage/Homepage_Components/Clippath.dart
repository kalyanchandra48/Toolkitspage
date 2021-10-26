import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(0, 60);
    var endPoint = Offset(60, 130);
    var path = Path();
    path.moveTo(60, 0);

    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(240, 130);
    path.lineTo(240, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class Curvedcontainer extends StatelessWidget {
  Color color;
  Image image;
  Curvedcontainer({
    required this.color,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCustomClipper(),
      child: Container(
        height: 130,
        width: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: color,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 80),
          child: image,
        ),
      ),
    );
  }
}
