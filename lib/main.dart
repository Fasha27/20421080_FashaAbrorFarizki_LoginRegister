
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_pasha/Routes.dart';
import 'package:toko_gitar_pasha/Screen/Login/LoginScreen.dart';
import 'package:toko_gitar_pasha/Theme.dart';

void Main() async{
  runApp(
    MaterialApp(
title: "Toko Gitar Fasha",
theme: theme(),
initialRoute: LoginScreen.routeName,
routes: routes,
    )
  );
}