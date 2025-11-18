import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:github_search_app/presentation/search/widgets/search_text_field.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

class AnimatedSearchField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isFocused;
  final bool isLoading;
  final VoidCallback onSubmit;

  const AnimatedSearchField({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.isFocused,
    required this.isLoading,
    required this.onSubmit,
  });

  @override
  State<AnimatedSearchField> createState() => _AnimatedSearchFieldState();
}

class _AnimatedSearchFieldState extends State<AnimatedSearchField>
    with SingleTickerProviderStateMixin {
  late AnimationController _rotationController;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
  }

  @override
  void didUpdateWidget(AnimatedSearchField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isLoading && !oldWidget.isLoading) {
      _rotationController.repeat();
    } else if (!widget.isLoading && oldWidget.isLoading) {
      _rotationController.stop();
      _rotationController.reset();
    }
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AppTheme.normalAnimation,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: widget.isLoading
            ? null
            : Border.all(color: widget.isFocused ? AppTheme.primary : AppTheme.border, width: 1),
        boxShadow: widget.isFocused && !widget.isLoading
            ? [
                BoxShadow(
                  color: AppTheme.primary.withValues(alpha: 0.2),
                  blurRadius: 12,
                  spreadRadius: 2,
                ),
              ]
            : [],
      ),
      child: widget.isLoading
          ? AnimatedBuilder(
              animation: _rotationController,
              builder: (context, child) {
                return CustomPaint(
                  painter: _LoadingBorderPainter(
                    progress: _rotationController.value,
                    color: AppTheme.primary,
                  ),
                  child: child,
                );
              },
              child: SearchTextField(
                controller: widget.controller,
                focusNode: widget.focusNode,
                isLoading: widget.isLoading,
                isFocused: widget.isFocused,
                onSubmit: widget.onSubmit,
              ),
            )
          : SearchTextField(
              controller: widget.controller,
              focusNode: widget.focusNode,
              isLoading: widget.isLoading,
              isFocused: widget.isFocused,
              onSubmit: widget.onSubmit,
            ),
    );
  }
}

class _LoadingBorderPainter extends CustomPainter {
  final double progress;
  final Color color;

  _LoadingBorderPainter({required this.progress, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(16));

    // Background border (subtle)
    final backgroundPaint = Paint()
      ..color = AppTheme.border
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawRRect(rrect, backgroundPaint);

    // Animated gradient border
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    final gradient = SweepGradient(
      colors: [
        color.withValues(alpha: 0.0),
        color.withValues(alpha: 0.3),
        color,
        color,
        color.withValues(alpha: 0.3),
        color.withValues(alpha: 0.0),
      ],
      stops: const [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
      transform: GradientRotation(progress * 2 * math.pi),
    );

    paint.shader = gradient.createShader(rect);
    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(_LoadingBorderPainter oldDelegate) {
    return oldDelegate.progress != progress || oldDelegate.color != color;
  }
}
