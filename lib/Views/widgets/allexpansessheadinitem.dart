import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectresponsive2/constant.dart';

class Allexpansessheadinitem extends StatelessWidget {
  const Allexpansessheadinitem(
      {super.key,
      required this.image,
      required this.color1,
      required this.color2, this.color});
  final String image;
  final Color color1;
  final Color color2;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints:const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
               
                decoration: ShapeDecoration(
                  color: color1,
                  shape:const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(color??kprimaycolor, BlendMode.srcIn),
                    height: 23,
                    width: 23,
                  ),
                ),
              ),
            ),
          ),
        ),
       const Spacer(),
        Transform.rotate(
          angle: -1.5707 * 2,
          child: Icon(
            Icons.arrow_back_ios,
            color: color2,
          ),
        )
      ],
    );
  }
}
