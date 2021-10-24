


import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:galarytop/app/features/presentation/widgets/container_button_widget.dart';
import 'package:galarytop/app/features/presentation/widgets/headerWidget.dart';
import 'package:galarytop/app/features/presentation/widgets/row_text_widget.dart';
import 'package:galarytop/app/features/presentation/widgets/textField_container_widget.dart';
import 'package:galarytop/app/features/presentation/widgets/textField_password_container_widgets.dart';
import 'package:galarytop/app/features/presentation/widgets/theme/style.dart';
import 'package:galarytop/const.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _controllerEmail = TextEditingController( );
  TextEditingController _controllerPassword = TextEditingController();

@override
  void dispose() {
  _controllerEmail.dispose();
  _controllerPassword.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 32),
          child: Column(
            children: [
                HeaderWidget(title: "Login"),
             TextFieldContainerWidget(
               controller: _controllerEmail,
               keyboardType: TextInputType.emailAddress,
               prefixIcon: Icons.email,
             ),
              SizedBox(height: 10,),
              TextFieldPasswordContainerWidget(
                controller: _controllerPassword,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.lock,
              ),
               SizedBox(
                 height: 10,
               ),
               _forgotPasswordWidget(),
            SizedBox(
              height: 10,
            ),
              ContainerButtonWidget(
                  title: "Login",ontap: (){

              },

              ),
              SizedBox(
                height: 10,
              ),
             RowTextWidget(
               title1: "Don't have an account",
               title2:"Register" ,
               ontap: (){
                 Navigator.pushNamed(context, PageConst.registerPage);
               },
             ),
              SizedBox(
                height: 10,
              ),
              _rowGoogleWodget(),

            ],
          ),
        ),
      ),

    );
  }

 Widget _forgotPasswordWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(""),
        InkWell(
          onTap: (){

            Navigator.pushNamed(context, PageConst.forgotPasswordPage);
          },
          child:  Text("Forgot Password?",style: TextStyle(color: greenColor,fontSize: 16,fontWeight: FontWeight.w500),),
        )


      ],
    );
  }


  }

 Widget _rowGoogleWodget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: (){

          //FIXME:google login
        },
        child: Container(
          height: 70,
          width: 70,
          decoration:BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),

          ),
          child: Icon(AntDesign.googleplus),

        ),
      )
    ],
  );
 }




