import 'package:flutter/material.dart';
import 'package:galarytop/app/features/presentation/widgets/theme/style.dart';
class ContainerButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const ContainerButtonWidget({Key? key, required this.title, required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ontap,
      child:  Container(
        height: 44,
        alignment:  Alignment.center,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(10)
        ) ,
        child: Text(title,style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w500),),
      ),
    );
  }
}
