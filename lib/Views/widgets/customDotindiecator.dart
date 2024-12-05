
import 'package:flutter/material.dart';
import 'package:projectresponsive2/constant.dart';

class customDotindiecator extends StatelessWidget {
  const customDotindiecator({super.key, required this.isactive});
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isactive ? 32 : 8,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: isactive ? kprimaycolor : Colors.grey,
      ),
    );
  }
}
