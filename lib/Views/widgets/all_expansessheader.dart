import 'package:flutter/material.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class all_expancessHeader extends StatelessWidget {
  const all_expancessHeader({
    super.key,
    required this.title,
    required this.numberoficonshow,
  });
  final String title;
  final int numberoficonshow;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.stylesemibold20,
        ),
       const Expanded(child: SizedBox()),
        numberoficonshow == 0
            ? const IconmonthofHeader()
            : numberoficonshow == 1
                ? const icon_quickinvocie()
                : Container(),
      ],
    );
  }
}

class icon_quickinvocie extends StatelessWidget {
  const icon_quickinvocie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(400),
          color: const Color(0xffFAFAFA),
        ),
        child: const Icon(
          Icons.add,
          color: kprimaycolor,
        ));
  }
}

class IconmonthofHeader extends StatelessWidget {
  const IconmonthofHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(
        8,
      ),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Colors.grey),
          )),
      child: Row(
        children: [
          const Text(
            'Monthly',
            style: AppStyles.stylemedium16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Transform.rotate(
              angle: -1.5707,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: ksecoundcolor,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
