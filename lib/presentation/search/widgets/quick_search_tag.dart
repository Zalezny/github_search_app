import 'package:flutter/material.dart';
import 'package:github_search_app/settings/theme/app_theme.dart';

class QuickSearchTag extends StatefulWidget {
  final String tag;
  final VoidCallback onTap;

  const QuickSearchTag({super.key, required this.tag, required this.onTap});

  @override
  State<QuickSearchTag> createState() => _QuickSearchTagState();
}

class _QuickSearchTagState extends State<QuickSearchTag> with SingleTickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.92,
    ).animate(CurvedAnimation(parent: _scaleController, curve: Curves.easeInOutCubic));
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  void _handleTapDown(TapDownDetails details) {
    _scaleController.forward();
  }

  void _handleTapUp(TapUpDetails details) {
    _scaleController.reverse();
  }

  void _handleTapCancel() {
    _scaleController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: widget.onTap,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            color: AppTheme.card.withValues(alpha: 0.5),
            border: Border.all(color: AppTheme.border),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.tag, style: const TextStyle(color: AppTheme.foreground, fontSize: 14)),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward, size: 14, color: AppTheme.mutedForeground),
            ],
          ),
        ),
      ),
    );
  }
}
