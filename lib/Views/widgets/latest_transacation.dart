import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/customtextfeild2.dart';
import 'package:projectresponsive2/Views/widgets/latest_treanscationListView.dart';
import 'package:projectresponsive2/Views/widgets/textnameofQuickinvoice.dart';
import 'package:projectresponsive2/constant.dart';

import 'package:projectresponsive2/utils/app_styles.dart';

class LatestTransacation extends StatelessWidget {
  const LatestTransacation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.stylemedium16,
        ),
        SizedBox(
          height: 24,
        ),
        latest_transcationListView(),
        Divider(
          thickness: 1,
          height: 48,
        ),

        customTestFeild(),
        // customTestFeild(),
      ],
    );
  }
}

class customTestFeild extends StatelessWidget {
  const customTestFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textnameofquickinvoice(name: 'Customer name'),
                  customTextfeild(
                    hint: 'Type customer name',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textnameofquickinvoice(
                    name: 'Customer Email',
                  ),
                  customTextfeild(
                    hint: 'Type customer email',
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textnameofquickinvoice(name: 'Item name'),
                  customTextfeild(
                    hint: 'Type Item name',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textnameofquickinvoice(
                    name: 'Item mount',
                  ),
                  customTextfeild(
                    hint: 'USD',
                    isf: true,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(child: Customtextfeild2(
              backgroundcolor: Color(0xffFAFAFA),
              colortext: kprimaycolor,
            )),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child:Customtextfeild2(),
            ),
          ],
        )
      ],
    );
  }
}
