import 'package:flutter/material.dart';
import 'package:galarytop/app/features/presentation/pages/forgot_password_page.dart';
import 'package:galarytop/app/features/presentation/pages/login_pages.dart';
import 'package:galarytop/app/features/presentation/pages/register_page.dart';
import 'package:galarytop/const.dart';


//Geração de rotas nomeadas
class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

//Rota pagina de recupera senha
    switch (settings.name) {
      case PageConst.forgotPasswordPage:
        {
          return materialBuilder(widget: ForgotPasswordPage());
        }
        //Rota para pagina de login
      case PageConst.loginPage:
        {
          return materialBuilder(widget: LoginPage());
        }
      case PageConst.registerPage:
        {
          //Rota para a pagina de registo de usuario
          return materialBuilder(widget: RegisterPage());
        }
      case "/":
        {
          return materialBuilder(widget: LoginPage());
        }
           default: return materialBuilder(widget: ErrorPage());
    }
  }
}
//Tela que aparecera se hover erros no caregamento das paginas
class ErrorPage extends StatefulWidget {
  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("error"),
      ),
      body: Center(
        child: Text("error"),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}