import 'package:flutter/material.dart';
import 'package:galarytop/app/features/presentation/widgets/theme/style.dart';

class TextFieldContainerWidget extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final  String ? hintText;
  const TextFieldContainerWidget({Key? key,this.controller,this.prefixIcon, this.keyboardType, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration:BoxDecoration(
        color: color747480.withOpacity(.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        keyboardType: keyboardType,
        controller: controller,
        decoration:  InputDecoration(
          hintText: hintText,
            border: InputBorder.none,
            prefixIcon: Icon(prefixIcon)
        ),
      ),
    );
  }
}
