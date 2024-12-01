import 'package:flutter/material.dart';

class customBackgroundcontainer extends StatelessWidget {
  const customBackgroundcontainer({
    super.key,
    required this.child,
    this.padding,
  });
  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      margin: EdgeInsets.all(padding ?? 20),
      padding: const EdgeInsets.all(20),
      child: child,
    );
  }
}
