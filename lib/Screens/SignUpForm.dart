import 'package:flt_vlt/Screens/LoginForm.dart';
import 'package:flt_vlt/genTextFormField.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _conUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.0),
                Text(
                  'Sign In',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30.0),
                ),
                SizedBox(height: 50.0),
                Image.asset(
                  "assets/image/logo.png",
                  height: 120.0,
                  width: 120.0,
                ),
                SizedBox(height: 15.0),
                getTextFormField(
                  controller: _conUserId,
                  iconData: Icons.person,
                  hintName: "User ID",
                ),
                SizedBox(
                  height: 10.0,
                ),
                getTextFormField(
                  controller: _conUserName,
                  iconData: Icons.person_outline,
                  hintName: "User Name",
                  inputType: TextInputType.name,
                ),
                SizedBox(
                  height: 10.0,
                ),
                getTextFormField(
                  controller: _conEmail,
                  iconData: Icons.email,
                  hintName: "Email",
                  inputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 10.0,
                ),
                getTextFormField(
                  controller: _conPassword,
                  iconData: Icons.key,
                  hintName: "Password",
                  is0bsureText: true,
                ),
                SizedBox(
                  height: 10.0,
                ),
                getTextFormField(
                  controller: _conConfirmPassword,
                  iconData: Icons.key_off_sharp,
                  hintName: "Password",
                  is0bsureText: true,
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: double.infinity,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Does you have account?'),
                      FlatButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => LoginForm()),
                              (Route<dynamic> route) => false);
                        },
                        textColor: Colors.blue,
                        child: Text('Sign In'),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
