
import 'package:flutter/cupertino.dart';
import 'package:toko_gitar_pasha/Screen/Login/LoginScreen.dart';
import 'package:toko_gitar_pasha/Screen/Register/Register.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen()
};