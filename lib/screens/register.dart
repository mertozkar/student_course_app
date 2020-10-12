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
  int _value = 1;
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
                buildUserMail(),
                buildUserPasswordRegister(),
                buildUserType(),
                buildRegisterButton(),
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
        labelText: "User Name : ",
        hintText: "user name",
      ),
      validator: validateUserName,
    );
  }

  buildUserPasswordRegister() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password : ",
        hintText: "password",
      ),
    );
  }

  buildRegisterButton() {
    return RaisedButton(
      child: Text("Register"),
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Theme.of(context).accentColor),
      ),
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
    );
  }

  buildUserMail() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "E-Mail : ",
        hintText: "e-Mail account",
      ),
    );
  }

  buildUserType() {
    return DropdownButton(
      value: _value,
      items: [
        DropdownMenuItem(
          child: Text("Student"),
          value: 1,
        ),
        DropdownMenuItem(
          child: Text("Teacher"),
          value: 2,
        ),
      ],
      onChanged: (value) {
        setState(() {
          _value = value;
          print(_value);
        });
      },
    );

    
  }
}
