import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_pasha/size_config.dart';

class RegisterScreen extends StatelessWidget {
static String routeName = "sign_up"; 

  @override 
  Widget build (BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      )
      
    );
  }
}