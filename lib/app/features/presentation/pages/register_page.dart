import 'package:flutter/material.dart';
import 'package:galarytop/app/features/presentation/widgets/headerWidget.dart';
import 'package:galarytop/app/features/presentation/widgets/textField_container_widget.dart';
import 'package:galarytop/app/features/presentation/widgets/textField_password_container_widgets.dart';
import 'package:galarytop/app/features/presentation/widgets/theme/style.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);


  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _controllerUserName = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPasswordAgain = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  @override
  void dispose() {
    _controllerUserName.dispose();
   _controllerEmail.dispose();
   _controllerPassword.dispose();
   _controllerPasswordAgain.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 22,vertical: 32),
        child: Column(
          children: [
            HeaderWidget(title: "Registration",),
            SizedBox(height: 10,),
            _profileWidget(),
            SizedBox(height: 10,),
            //Campo de nome do usuario
            TextFieldContainerWidget(
              keyboardType: TextInputType.text,
              prefixIcon: Icons.person,
              controller: _controllerUserName,
              hintText: "Usuário",
            ),
            SizedBox(height: 10,),
            //Campo de Email do usuario
            TextFieldContainerWidget(
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.email,
              controller: _controllerEmail,
              hintText:"E-Mail",
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 120,
              endIndent: 120,
              thickness: 2,

            ),
            SizedBox(
              height: 10,
            ),
            TextFieldPasswordContainerWidget(
              controller: _controllerPassword,
              keyboardType: TextInputType.text,
              hintText: " password",
              prefixIcon: Icons.lock,
            ),
            SizedBox(
              height: 10,
            ),
            TextFieldPasswordContainerWidget(
              controller: _controllerPasswordAgain ,
              keyboardType: TextInputType.text,
              hintText: "confirm  password",
              prefixIcon: Icons.lock,
            ),
          ],
        ),
      ),
    );
  }

 Widget _profileWidget() {
    return Container(
      child: Column(
        children: [
          Container(
            height: 62,
            width: 62,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: Image.asset("assets/profile_default.png",fit: BoxFit.cover,),
          ),
          SizedBox(
            height:12,
          ),
          Text("add profile proto",style:TextStyle(color: greenColor))
        ],
      ),
    );
 }
}
