import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/dashboerdView.dart';

void main() {
  runApp(const Dashboerd());
}

class Dashboerd extends StatelessWidget {
  const Dashboerd({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Dashboerdview(),
    );
  }
}
