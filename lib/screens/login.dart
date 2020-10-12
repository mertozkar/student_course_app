import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_course_app/screens/register.dart';
import 'package:student_course_app/validation/login_validator.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State with LoginValidationMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  buildUserName(),
                  buildUserPassword(),
                  buildButton(),
                  buildRegister(),
                ],
              ),
            ),
          ),
        ));
  }

  buildUserName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Kullanıcı Adı : ",
        hintText: "kullanıcı adı",
      ),
      validator: validateUserName,
    );
  }

  buildUserPassword() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Şifre : ",
        hintText: "Şifre : ",
      ),
    );
  }

  buildButton() {
    return RaisedButton(
      child: Text("Giriş"),
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Theme.of(context).accentColor),
      ),
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
    );
  }

  buildRegister() {
    return RaisedButton(
      child: Text("Kayıt Ol"),
      color: Colors.white,
      textColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Theme.of(context).accentColor),
      ),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Register(),
            ));
      },
    );
  }
}
