import 'package:flutter/material.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class HeadertheSection extends StatelessWidget {
  const HeadertheSection({
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
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        numberoficonshow == 0
            ? const IconmonthofHeader()
            : numberoficonshow == 1?
             const icon_quickinvocie() :
                numberoficonshow==2?
               const treanscationhistory():
              const SizedBox(),
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
 class treanscationhistory extends StatelessWidget {
  const treanscationhistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text('See all',style: AppStyles.styleMedium16(context),);
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
           Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
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
