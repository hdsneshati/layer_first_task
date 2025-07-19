import 'package:flutter/material.dart';

class AnimatedGradientText extends StatefulWidget {
  const AnimatedGradientText({super.key});

  @override
  State<AnimatedGradientText> createState() => _AnimatedGradientTextState();
}

class _AnimatedGradientTextState extends State<AnimatedGradientText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    // 🎬 ایجاد کنترلر انیمیشن
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(); // تکرار بی‌نهایت
  }

  @override
  void dispose() {
    _controller.dispose(); // پاک‌سازی
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        // محاسبه شیفت گرادینت در هر فریم
        final double shift = _controller.value * 2;

        return Text(
          'الگو',
          style: TextStyle(
            fontFamily: 'dana',
            fontSize: 72,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..shader = LinearGradient(
                colors: const [
                  Color(0xff050505),
                  Color(0xff050505),
                  Color(0xff6B6B6B),
                ],
                begin: Alignment(-1.0 + shift, 0),
                end: Alignment(1.0 + shift, 0),
                tileMode: TileMode.mirror,
              ).createShader(const Rect.fromLTWH(0, 0, 400, 100)),
          ),
        );
      },
    );
  }
}
