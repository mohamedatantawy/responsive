import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/widgets/all_expancess.dart';
import 'package:projectresponsive2/Views/widgets/quickInvoicebody.dart';

class AllexpancessAndQuickinVoice extends StatelessWidget {
  const AllexpancessAndQuickinVoice({
    super.key,  this.ismobile =false,
  });
  final bool ismobile;
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpancess(),
        SizedBox(
          height: 10,
        ),
        Quickinvoicebody(),
      ],
    );
  }
}
