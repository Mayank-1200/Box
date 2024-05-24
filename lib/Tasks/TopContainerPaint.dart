import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class TopContainerPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.05797101, size.height * 0.3298728);
    path_0.cubicTo(
        size.width * 0.05797101,
        size.height * 0.1657924,
        size.width * 0.1597254,
        size.height * 0.03277848,
        size.width * 0.2852457,
        size.height * 0.03277848);
    path_0.lineTo(size.width * 0.7147543, size.height * 0.03277848);
    path_0.cubicTo(
        size.width * 0.8402754,
        size.height * 0.03277848,
        size.width * 0.9420290,
        size.height * 0.1657924,
        size.width * 0.9420290,
        size.height * 0.3298728);
    path_0.cubicTo(
        size.width * 0.9420290,
        size.height * 0.4939533,
        size.width * 0.8402754,
        size.height * 0.6269674,
        size.width * 0.7147543,
        size.height * 0.6269674);
    path_0.lineTo(size.width * 0.05797101, size.height * 0.6269674);
    path_0.lineTo(size.width * 0.05797101, size.height * 0.3298728);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.05797101, size.height * 0.4403870),
        Offset(size.width * 0.9420290, size.height * 0.4403870),
        [const Color(0xff830010).withOpacity(1), const Color(0xffFF0037).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.05808725, size.height * 0.8479957);
    path_1.lineTo(size.width * 0.05808725, size.height * 0.6267043);
    path_1.lineTo(size.width * 0.2588812, size.height * 0.6267043);

    path_1.cubicTo(
        size.width * 0.1392696,
        size.height * 0.6338109,
        size.width * 0.07518043,
        size.height * 0.7771935,
        size.width * 0.05808725,
        size.height * 0.8479957);
    path_1.close();



    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.05797101, size.height * 0.4403870),
        Offset(size.width * 0.9420290, size.height * 0.4403870),
        [const Color(0xff830010).withOpacity(1), const Color(0xffFF0037).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class TopContainer2Paint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.05797101, size.height * 0.3298728);
    path_0.cubicTo(
        size.width * 0.05797101,
        size.height * 0.1657924,
        size.width * 0.1597254,
        size.height * 0.03277848,
        size.width * 0.2852457,
        size.height * 0.03277848);
    path_0.lineTo(size.width * 0.7147543, size.height * 0.03277848);
    path_0.cubicTo(
        size.width * 0.8402754,
        size.height * 0.03277848,
        size.width * 0.9420290,
        size.height * 0.1657924,
        size.width * 0.9420290,
        size.height * 0.3298728);
    path_0.cubicTo(
        size.width * 0.9420290,
        size.height * 0.4939533,
        size.width * 0.8402754,
        size.height * 0.6269674,
        size.width * 0.7147543,
        size.height * 0.6269674);
    path_0.lineTo(size.width * 0.05797101, size.height * 0.6269674);
    path_0.lineTo(size.width * 0.05797101, size.height * 0.3298728);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.05797101, size.height * 0.4403870),
        Offset(size.width * 0.9420290, size.height * 0.4403870),
        [Colors.yellow.withOpacity(1), Colors.amber.withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.05808725, size.height * 0.8479957);
    path_1.lineTo(size.width * 0.05808725, size.height * 0.6267043);
    path_1.lineTo(size.width * 0.2588812, size.height * 0.6267043);

    path_1.cubicTo(
        size.width * 0.1392696,
        size.height * 0.6338109,
        size.width * 0.07518043,
        size.height * 0.7771935,
        size.width * 0.05808725,
        size.height * 0.8479957);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.05797101, size.height * 0.4403870),
        Offset(size.width * 0.9420290, size.height * 0.4403870),
        [Colors.yellow.withOpacity(1), Colors.amber.withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class TopContainer3Paint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.05797101, size.height * 0.3298728);
    path_0.cubicTo(
        size.width * 0.05797101,
        size.height * 0.1657924,
        size.width * 0.1597254,
        size.height * 0.03277848,
        size.width * 0.2852457,
        size.height * 0.03277848);
    path_0.lineTo(size.width * 0.7147543, size.height * 0.03277848);
    path_0.cubicTo(
        size.width * 0.8402754,
        size.height * 0.03277848,
        size.width * 0.9420290,
        size.height * 0.1657924,
        size.width * 0.9420290,
        size.height * 0.3298728);
    path_0.cubicTo(
        size.width * 0.9420290,
        size.height * 0.4939533,
        size.width * 0.8402754,
        size.height * 0.6269674,
        size.width * 0.7147543,
        size.height * 0.6269674);
    path_0.lineTo(size.width * 0.05797101, size.height * 0.6269674);
    path_0.lineTo(size.width * 0.05797101, size.height * 0.3298728);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.05797101, size.height * 0.4403870),
        Offset(size.width * 0.9420290, size.height * 0.4403870),
        [Color(0x117503).withOpacity(1), Colors.green.shade400.withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.05808725, size.height * 0.8479957);
    path_1.lineTo(size.width * 0.05808725, size.height * 0.6267043);
    path_1.lineTo(size.width * 0.2588812, size.height * 0.6267043);

    path_1.cubicTo(
        size.width * 0.1392696,
        size.height * 0.6338109,
        size.width * 0.07518043,
        size.height * 0.7771935,
        size.width * 0.05808725,
        size.height * 0.8479957);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.05797101, size.height * 0.4403870),
        Offset(size.width * 0.9420290, size.height * 0.4403870),
        [Color(0xFF0F6E04).withOpacity(1), Colors.green.withOpacity(0.8)],
        [0, 1]);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class TopContainer4Paint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.05797101, size.height * 0.3298728);
    path_0.cubicTo(
        size.width * 0.05797101,
        size.height * 0.1657924,
        size.width * 0.1597254,
        size.height * 0.03277848,
        size.width * 0.2852457,
        size.height * 0.03277848);
    path_0.lineTo(size.width * 0.7147543, size.height * 0.03277848);
    path_0.cubicTo(
        size.width * 0.8402754,
        size.height * 0.03277848,
        size.width * 0.9420290,
        size.height * 0.1657924,
        size.width * 0.9420290,
        size.height * 0.3298728);
    path_0.cubicTo(
        size.width * 0.9420290,
        size.height * 0.4939533,
        size.width * 0.8402754,
        size.height * 0.6269674,
        size.width * 0.7147543,
        size.height * 0.6269674);
    path_0.lineTo(size.width * 0.05797101, size.height * 0.6269674);
    path_0.lineTo(size.width * 0.05797101, size.height * 0.3298728);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.05797101, size.height * 0.4403870),
        Offset(size.width * 0.9420290, size.height * 0.4403870),
        [Color(0x97D88).withOpacity(1), Color(0xff66BCC4).withOpacity(1),],
        [0, 1]);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.05808725, size.height * 0.8479957);
    path_1.lineTo(size.width * 0.05808725, size.height * 0.6267043);
    path_1.lineTo(size.width * 0.2588812, size.height * 0.6267043);

    path_1.cubicTo(
        size.width * 0.1392696,
        size.height * 0.6338109,
        size.width * 0.07518043,
        size.height * 0.7771935,
        size.width * 0.05808725,
        size.height * 0.8479957);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.05797101, size.height * 0.4403870),
        Offset(size.width * 0.9420290, size.height * 0.4403870),
        [Color(0xFF0E7C7C).withOpacity(1), Colors.blue.shade300.withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}


