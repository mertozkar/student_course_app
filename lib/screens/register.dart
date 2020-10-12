import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_course_app/validation/login_validator.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterState();
  }
}

class _RegisterState extends State with LoginValidationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              children: <Widget>[
                buildUserNameRegister(),
                buildUserPasswordRegister(),
                buildSubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildUserNameRegister() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Kullanıcı Adı : ",
        hintText: "kullanıcı adı",
      ),
      validator: validateUserName,
    );
  }

  buildUserPasswordRegister() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Şifre : ",
        hintText: "Şifre : ",
      ),
    );
  }

  buildSubmitButton() {
    return RaisedButton(
      child: Text("Kayıt Ol"),
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Theme.of(context).accentColor),
      ),
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
    );
  }
}
