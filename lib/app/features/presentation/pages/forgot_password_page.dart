import 'package:flutter/material.dart';
import 'package:galarytop/app/features/presentation/widgets/container_button_widget.dart';
import 'package:galarytop/app/features/presentation/widgets/headerWidget.dart';
import 'package:galarytop/app/features/presentation/widgets/row_text_widget.dart';
import 'package:galarytop/app/features/presentation/widgets/textField_container_widget.dart';
import 'package:galarytop/const.dart';
class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController _controllerEmail = TextEditingController();
@override
  void dispose() {
  _controllerEmail.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: 22,vertical: 32),
          child: Column(
            children: [
              HeaderWidget(title: "Forgot Passoword"),
              SizedBox(
                height: 20,
              ),
              Text("Don't worry! just fill your email and${AppConst.appNme} will send you a link to rest your passwoud"),
              SizedBox(
                height: 20,
              ),
              TextFieldContainerWidget(
                controller: _controllerEmail,
                prefixIcon:  Icons.email,
                keyboardType: TextInputType.emailAddress,

              ),
              SizedBox(
                height: 20,
              ),
              ContainerButtonWidget(
                title: "Send Password Reset Email",
                ontap: () {  },
              ),
              SizedBox(height: 20,),
              RowTextWidget(
                title1: "Remember the accont information?",
                title2:"Login" ,
                ontap: (){
                  Navigator.pushNamedAndRemoveUntil(context, PageConst.loginPage, (route) => false);
                },
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
