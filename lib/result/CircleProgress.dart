import 'dart:math';

import 'package:flutter/material.dart';

class circleProgress extends CustomPainter{

  double currentProgress;
  circleProgress(this.currentProgress);
  @override
  void paint(Canvas canvas, Size size) {
    //base circle
    Paint outerCircle =Paint()
        ..strokeWidth=35
      ..color=Color.fromRGBO(190, 149, 196, 1.0)

        ..style=PaintingStyle.stroke;
    Paint completeArc=Paint()
    ..strokeWidth=23
      ..color= Color.fromRGBO(35, 25, 66, 1)
    ..style=PaintingStyle.stroke
    ..strokeCap=StrokeCap.round;
    Offset center = Offset(size.width/2, size.height/2);
    double radius=min(size.width/2,size.height/2)-10;
canvas.drawCircle(center, radius, outerCircle);//main circle
    double angle =2*pi*(currentProgress/100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi/2, angle, false, completeArc);


  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}