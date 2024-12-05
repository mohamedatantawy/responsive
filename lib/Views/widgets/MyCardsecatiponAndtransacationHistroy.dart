import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/customebackgroundcontainer.dart';
import 'package:projectresponsive2/Views/widgets/mycard.dart';

class Mycardsecatiponandtransacationhistroy extends StatelessWidget {
  const Mycardsecatiponandtransacationhistroy({super.key});

  @override
  Widget build(BuildContext context) {
    return const customBackgroundcontainer(
      child: Column(
        children: [
          Mycard_secation(),
          treansaction_history(),
        ],
      ),
    );
  }
}
