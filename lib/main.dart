import 'package:flutter/material.dart';
import 'package:galarytop/app/features/presentation/pages/login_pages.dart';
import 'package:galarytop/on_generate_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
     debugShowCheckedModeBanner: false,
     onGenerateRoute: OnGenerateRoute.route,
     initialRoute: "/",
      routes: {
        "/":(context){
          return LoginPage();
        }
      },
    );
  }
}

