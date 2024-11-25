import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:projectresponsive2/Views/widgets/all_expansessheader.dart';
import 'package:projectresponsive2/Views/widgets/allexpansessheadinitem.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/models/allexpanssesModels.dart';
import 'package:projectresponsive2/utils/app_images.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class AllExpancess extends StatelessWidget {
  const AllExpancess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 400,
      child:const Column(
        children: [
           all_expancessHeader(),
           SizedBox(
            height: 16,
          ),
          allExpansessItemListView()
        ],
      ),
    );
  }
}

class allExpansessItemListView extends StatelessWidget {
  const allExpansessItemListView({
    super.key,
  });
  final List<Allexpanssesmodels> datas = const [
    Allexpanssesmodels(
      image: Assets.imageMoneys,
      title: 'Balance',
      data: 'April 2022',
      price: r'$20,129',
    ),
    Allexpanssesmodels(
      image: Assets.imageCardReceive,
      title: 'Income',
      data: 'April 2022',
      price: r'$20,129',
    ),
    Allexpanssesmodels(
      image: Assets.imageCardSend,
      title: 'Expanses',
      data: 'April 2022',
      price: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
        children: datas.asMap().entries.map(
      (e) {
        int count = e.key;
        var data = e.value;
        if (count == 1) {
          return Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: inactiveitemExpancess(allexpanssesmodels: data),
          ));
        }else{
          return Expanded(child: inactiveitemExpancess(allexpanssesmodels: data));
        }
      },
    ).toList());
  }
}

// class allExpancessdd extends StatelessWidget {
//   const allExpancessdd({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return FittedBox(
//       child: Row(
//         children: [
//           activeitemExpancess(image: Assets.imageMoneys),
//           inactiveitemExpancess(
//             image: Assets.imageCardReceive,
//           ),
//           inactiveitemExpancess(
//             image: Assets.imageCardSend,
//           )
//         ],
//       ),
//     );
//   }
// }

// // class allExpancessbody extends StatefulWidget {
// //   const allExpancessbody({super.key});

// //   @override
// //   State<allExpancessbody> createState() => _allExpancessbodyState();
// // }

// // class _allExpancessbodyState extends State<allExpancessbody> {
// //   int num = 0;
// //   final List<String> image = const [
// //     Assets.imageCardSend,
// //     Assets.imageCardReceive,
// //     Assets.imageMoneys,
// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView.builder(
// //         itemCount: image.length,
// //         scrollDirection: Axis.horizontal,
// //         itemBuilder: (context, index) {
// //           return GestureDetector(
// //             onTap: () {
// //               setState(() {
// //                 if (num != index) {
// //                   num = index;
// //                 }
// //               });
// //             },
// //             child: allExpancessItem(
// //               image: image[index],
// //               active: num == index,
// //             ),
// //           );
// //         });
// //   }
// // }

// class allExpancessItem extends StatelessWidget {
//   const allExpancessItem({
//     super.key,
//     required this.image,
//     required this.active,
//   });
//   final String image;

//   final bool active;
//   @override
//   Widget build(BuildContext context) {
//     return active == true
//         ? inactiveitemExpancess(image: image)
//         : inactiveitemExpancess(image: image);
//   }
// }

// class activeitemExpancess extends StatelessWidget {
//   const activeitemExpancess({
//     super.key,
//     required this.image,
//   });

//   final String image;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: kprimaycolor,
//       padding: EdgeInsets.all(12),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               SvgPicture.asset(
//                 image,
//                 height: 23,
//                 width: 23,
//               ),
//               const Expanded(
//                 child: SizedBox(
//                   width: 40,
//                 ),
//               ),
//               const Icon(
//                 Icons.keyboard_arrow_right,
//                 color: Colors.white,
//               )
//             ],
//           ),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               'Balance',
//               style: AppStyles.stylesemibold16.copyWith(
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           const Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               'April 2022',
//               style: AppStyles.styleregular14,
//             ),
//           ),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               r'$20,129',
//               style: AppStyles.stylesemibold24.copyWith(
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class inactiveitemExpancess extends StatelessWidget {
  const inactiveitemExpancess({
    super.key,
    required this.allexpanssesmodels,
  });

  final Allexpanssesmodels allexpanssesmodels;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: 10),
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
          Allexpansessheadinitem(image: allexpanssesmodels.image),
          const SizedBox(
            height: 30,
          ),
          Text(
            allexpanssesmodels.title,
            style: AppStyles.stylesemibold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allexpanssesmodels.data,
            style: AppStyles.styleregular14,
          ),
          const SizedBox(
            height: 8,
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
