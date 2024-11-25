import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Allexpansessheadinitem extends StatelessWidget {
  const Allexpansessheadinitem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              height: 23,
              width: 23,
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(
            width: 40,
          ),
        ),
        Transform.rotate(
          angle: -1.5707 * 2,
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
