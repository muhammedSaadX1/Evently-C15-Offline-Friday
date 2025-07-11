import 'package:evently_c15_offline_friday/features/authentication/login/login_screen.dart';
import 'package:evently_c15_offline_friday/features/authentication/register/register_screen.dart';
import 'package:evently_c15_offline_friday/features/main_layout/main_layout.dart';
import 'package:flutter/cupertino.dart';

class RoutesManager{
  static const String login = "/login";
  static const String register = "/register";
  static const String mainLayout = "/mainLayout";


  static Route? getRoute(RouteSettings settings){
    switch(settings.name){
      case login:
        return CupertinoPageRoute(builder: (context) => const LoginScreen(),);
      case register:
        return CupertinoPageRoute(builder: (context) => const RegisterScreen(),);
      case mainLayout:
        return CupertinoPageRoute(builder: (context) => const LayoutScreen(),);
    }
  }
}