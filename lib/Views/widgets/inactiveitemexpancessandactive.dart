import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectresponsive2/Views/widgets/allexpansessheadinitem.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/models/allexpanssesModels.dart';
import 'package:projectresponsive2/utils/app_styles.dart';




class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
     required this.allexpanssesmodels, required this.isactive,
  });

   final bool isactive;
final Allexpanssesmodels allexpanssesmodels;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(allexpanssesmodels.image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Text(
          allexpanssesmodels.title,
          style: AppStyles.styleRegular16,
        ),
      ),
    );
  }
}



class inactiveitemExpancess extends StatelessWidget {
  const inactiveitemExpancess({
    super.key,
    required this.allexpanssesmodels,
    required this.isactive,
  });
  final bool isactive;
  final Allexpanssesmodels allexpanssesmodels;

  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.sizeOf(context).height*0.24,
       width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Allexpansessheadinitem(
            image: allexpanssesmodels.image,
            color1: const Color(0xffFAFAFA),
            color2: ksecoundcolor,
          ),
       const Expanded(
          child: SizedBox(
            height: 20,
          ),
        ),
          Text(
            allexpanssesmodels.title,
            style: AppStyles.stylesemibold16,
          ),
          const  Expanded(
            child:  SizedBox(
              height: 8,
            ),
          ),
          Text(
            allexpanssesmodels.data,
            style: AppStyles.styleregular14,
          ),
          const  Expanded(
            child:  SizedBox(
              height: 8,
            ),
          ),
          Text(
            allexpanssesmodels.price,
            style: AppStyles.stylesemibold24,
          ),
        ],
      ),
    );
  }
}

class activeitemExpancess extends StatelessWidget {
  const activeitemExpancess({
    super.key,
    required this.allexpanssesmodels,
    required this.isactive,
  });
  final bool isactive;
  final Allexpanssesmodels allexpanssesmodels;

  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.sizeOf(context).height*0.24,
       width: double.infinity,
      decoration: ShapeDecoration(
        color:  kprimaycolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Allexpansessheadinitem(
            image: allexpanssesmodels.image,
            color1: Colors.white10,
            color2: Colors.white,
            color: Colors.white,
          ),
        const Expanded(
           child:  SizedBox(
              height: 20,
            ),
         ),
          Text(
            allexpanssesmodels.title,
            style: AppStyles.stylesemibold16.copyWith(
              color: Colors.white,
            ),
          ),
       const  Expanded(
            child:  SizedBox(
              height: 8,
            ),
          ),
          Text(
            allexpanssesmodels.data,
            style: AppStyles.styleregular14.copyWith(color: Colors.grey),
          ),
          const  Expanded(
            child:  SizedBox(
              height: 8,
            ),
          ),
          Text(
            allexpanssesmodels.price,
            style: AppStyles.stylesemibold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
