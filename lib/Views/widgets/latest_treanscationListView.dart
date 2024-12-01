import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/userinfobody.dart';
import 'package:projectresponsive2/models/userinfomodels.dart';
import 'package:projectresponsive2/utils/app_images.dart';

class latest_transcationListView extends StatelessWidget {
  const latest_transcationListView({
    super.key,
  });
  final List<Userinfomodels> user = const [
    Userinfomodels(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imageFrame1),
    Userinfomodels(
        title: 'Josua Nunito',
        subtitle: 'JosuaNunito20@gmail',
        image: Assets.imageFrame2),
    Userinfomodels(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imageFrame1),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: user.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return IntrinsicWidth(
            child: userinfobody(
              userinfomodels: user[index],
            ),
          );
        },
      ),
    );
  }
}
