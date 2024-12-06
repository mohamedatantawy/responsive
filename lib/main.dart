import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:projectresponsive2/Views/dashboerdView.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder:(context)=> const Dashboerd()));
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
