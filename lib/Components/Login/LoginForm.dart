import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toko_gitar_pasha/Components/custom_surfix_icon.dart';
import 'package:toko_gitar_pasha/Components/default_button_costume_color.dart';
import 'package:toko_gitar_pasha/Screen/Register/Register.dart';
import 'package:toko_gitar_pasha/size_config.dart';
import 'package:toko_gitar_pasha/utils/contants.dart';

class SignInform extends StatefulWidget {
@override 
_SignInform CreateState() => _SignInform();

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _SignInform extends State<SignInform> {

final _formkey= GlobalKey<FormState>();
String? username;
String? password; 
bool? remember = false;

TextEditingController txtUserName = TextEditingController(),
  txtPassword = TextEditingController();


FocusNode focusNode = new FocusNode();

  @override 
  Widget Build(BuildContext context) {
    return Form(child: Column(
      children: [
        buildUserName(),
        SizedBox(height: getProportionateScreenHeight(30)),
        buildPassword(), 
         SizedBox(height: getProportionateScreenHeight(30)),
         Row(
           children: [
             Checkbox(
               value: remember,
                onChanged: (value) {setState(() {
                  remember = value; 
                });
                }),
                Text("Tetap Masuk"),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Lupa Password", 
                  style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
           ],
         ),
         DefaultButtonCustomeColor(
          color: kPrimaryColor,
          text: "Masuk",
          press: () {},
         ),
         SizedBox(
          height: 20,
         ),
          GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                  child: Text
                  ("Belum Punya Akun? Daftar Disini", 
                  style: TextStyle(decoration: TextDecoration.underline),
                  ),
          ),
      ],
      ),
    );  
  }


  TextFormField buildUserName() {
      return TextFormField(
        controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukan Username Anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assest/icons/user.svg",)
      ),
    ); 
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

TextFormField buildPassword() {
      var focusNode;
      var txtPassword;
      return TextFormField(
        controller: txtPassword,
        obscureText: true,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukan Password Anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assest/icons/user.svg",)
      ),
    ); 
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
