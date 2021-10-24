import 'package:flutter/material.dart';
import 'package:galarytop/app/features/presentation/widgets/theme/style.dart';
class RowTextWidget extends StatelessWidget {
  final String? title1;
  final String? title2;
  final VoidCallback? ontap;

  const RowTextWidget({Key? key,  this.title1, this.title2,  this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _rowTextWidget();
  }

  Widget _rowTextWidget() {
    return Row(
      children: [
        Text("$title1",style: TextStyle(fontSize: 18),),
        InkWell(
            onTap: ontap,
            child: Text("$title2",style: TextStyle(color: greenColor, fontSize: 18))),

      ],
    );
  }

}
