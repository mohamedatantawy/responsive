import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectresponsive2/Views/widgets/Dotindiecator.dart';
import 'package:projectresponsive2/Views/widgets/MyCardpageView.dart';
import 'package:projectresponsive2/Views/widgets/all_expansessheader.dart';
import 'package:projectresponsive2/Views/widgets/customListTile.dart';

import 'package:projectresponsive2/models/transactionModel.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class Mycard_secation extends StatefulWidget {
  const Mycard_secation({super.key});

  @override
  State<Mycard_secation> createState() => _Mycard_secationState();
}

class _Mycard_secationState extends State<Mycard_secation> {
  late PageController pageController;
  int cuurentindex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(
      () {
        cuurentindex = pageController.page!.toInt();
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeadertheSection(title: 'My Card', numberoficonshow: 3),
        const SizedBox(
          height: 20,
        ),
        My_cardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        Dotindiecator(
          currentindex: cuurentindex,
        ),
        const SizedBox(
          height: 20,
        ),
       
      ],
    );
  }
}

class treansaction_history extends StatelessWidget {
  const treansaction_history({super.key});
  final List<Transactionmodel> trans = const [
    Transactionmodel(
        tilte: 'Cash Withdrawal',
        date: '13 Apirl 2022',
        price: r'20.175',
        isRed: true),
    Transactionmodel(
        tilte: 'Landing page Porject',
        date: '13 Apirl 2022 at 3:30 PM',
        price: r'20.175',
        isRed: false),
    Transactionmodel(
        tilte: 'Juni Mobile app project',
        date: '13 Apirl 2022 at 3:30 PM',
        price: r'2',
        isRed: false)
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        const HeadertheSection(
            title: 'Treanseation History', numberoficonshow: 2),
        const SizedBox(
          height: 20,
        ),
        const Text(
          '13 Apirl 2022',
          style: AppStyles.styleregular14,
        ),
        ListView.builder(
         shrinkWrap: true,
          itemCount: trans.length,
          itemBuilder: (context, index) {
            return  CustomListTile(
            transactionmodel: trans[index],
          );
          },
          
        ),
       
      ],
    );
  }
}
