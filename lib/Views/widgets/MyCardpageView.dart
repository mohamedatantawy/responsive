
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/mycard_item.dart';

class My_cardPageView extends StatelessWidget {
  const My_cardPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        children: List.generate(
          3,
          (index) => const My_cardItem(),
        ));
  }
}
