import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class PartialCircleBorder extends StatelessWidget {
  final double percentage;
  final Color borderColor;
  final double borderWidth;

  const PartialCircleBorder({
    super.key,
    required this.percentage,
    required this.borderColor,
    this.borderWidth = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: CustomPaint(
            painter: _PartialCirclePainter(
              percentage: percentage,
              borderColor: borderColor,
              borderWidth: borderWidth,
            ),
          ),
        ),
        Text(
          "${(percentage * 100).toInt()}%",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryDark,
          ),
        ),
      ],
    );
  }
}

class _PartialCirclePainter extends CustomPainter {
  final double percentage;
  final Color borderColor;
  final double borderWidth;

  _PartialCirclePainter({
    required this.percentage,
    required this.borderColor,
    required this.borderWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = borderColor
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width - borderWidth) / 2;

    final backgroundPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = borderWidth
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, backgroundPaint);

    const startAngle = -3.14 / 2;
    final sweepAngle = 2 * 3.14 * percentage;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
