import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class HmiDashboard extends StatelessWidget {
  const HmiDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
        body: SizedBox(
      child: (size.width > 1184 && size.height > 456)
          ? Container(
        margin: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints(
          maxWidth:1480,
          minWidth: 1184,
          maxHeight: 604,
          minHeight: 456,
        ),
        child: AspectRatio(
          aspectRatio: 2.59,
          child: CustomPaint(
            painter: HmiShapePrinter()
          ),
        ),
      )
          : const Center(
              child: Text("Screen is too small to UI"),
            ),
    ));
  }
}

class HmiShapePrinter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Path path = Path()
    ..moveTo(0, size.height/2)
    ..lineTo(size.width * 0.13, size.height * 0.05)
    ..lineTo(size.width * 0.31, 0)
    ..lineTo(size.width * 0.39, size.height * 0.11)
    ..lineTo(size.width * 0.60, size.height * 0.11)
    ..lineTo(size.width * 0.69, 0)
    ..lineTo(size.width * 0.87, size.height * 0.05)
    ..lineTo(size.width, size.height / 2)
    ..lineTo(size.width * 0.87, size.height)
    ..lineTo(size.width * 0.13, size.height)
    ..close();

    Paint paint = Paint()
    ..style = PaintingStyle.stroke
    ..strokeWidth = 6
    ..color = primaryColor;
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}
