import 'package:flutter/material.dart';

class StatsGrid extends StatelessWidget {
  final List<Widget> children;

  const StatsGrid({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 12,
        runSpacing: 12,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: children,
      ),
    );
  }
}
