
import 'package:flutter/material.dart';
import 'package:projectresponsive2/constant.dart';
import 'package:projectresponsive2/utils/app_styles.dart';

class textnameofquickinvoice extends StatelessWidget {
  const textnameofquickinvoice({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: AppStyles.styleMedium16(context),
    );
  }
}

class customTextfeild extends StatelessWidget {
  const customTextfeild({super.key, required this.hint, this.isf=false,});
  final String hint;
  final  bool isf ;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: hint,
      suffixIcon: isf==true? Transform.rotate(
              angle: -1.5707,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: ksecoundcolor,
                  )),
            ):null,
        fillColor: const Color(0xffFAFAFA),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
