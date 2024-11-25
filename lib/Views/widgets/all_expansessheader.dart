import 'package:flutter/material.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class all_expancessHeader extends StatelessWidget {
  const all_expancessHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'All Expenses',
          style: AppStyles.stylesemibold20,
        ),
        Container(
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
        )
      ],
    );
  }
}
