
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/utils/app_images.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class My_cardItem extends StatelessWidget {
  const My_cardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: kprimaycolor,
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.imageMaskgroup),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Name card',
                  style: AppStyles.styleRegular16.copyWith(
                    color: Colors.white,
                  ),
                ),
                subtitle: const Text(
                  'Syah Bandi',
                  style: AppStyles.stylemedium20,
                ),
                trailing: SvgPicture.asset(
                  height: 24,
                  width: 24,
                  Assets.imageGallery,
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Text(
                '0918 8124 0042 8129',
                style: AppStyles.stylesemibold24.copyWith(
                  color: Colors.white,
                ),
              ),
    
              Text(
                '12/20 - 124',
                style: AppStyles.styleRegular16.copyWith(
                  color: Colors.white,
                ),
              ),
              // Text('0918 8124 0042 8129',style: AppStyles.stylesemibold24,),
            ],
          ),
        ),
      ),
    );
  }
}
