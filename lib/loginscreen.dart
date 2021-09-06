import 'package:flutter/material.dart';
import 'package:flutter_tut1/bottomnavbar.dart';
import 'package:flutter_tut1/forgotpasswordpage.dart';
import 'package:flutter_tut1/registerpage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _validator(String value) {
    return (value.isEmpty) ? 'Field Cannot be Empty' : null;
  }

  GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Form(
              key: _key,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                      controller: emailController,
                      validator: _validator,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.deepPurpleAccent,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.deepPurpleAccent,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.deepPurpleAccent,
                              )))),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                      controller: passController,
                      validator: _validator,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.deepPurpleAccent,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.deepPurpleAccent,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide(
                                width: 2,
                                color: Colors.deepPurpleAccent,
                              )))),
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (!_key.currentState.validate()) return;
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavBar(
                                      email: emailController.text,
                                    )),
                            (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.all(14),
                          primary: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22))),
                      child: Text('Login')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgotPasswordScreen(
                                          isForgot: true,
                                        )));
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.deepPurpleAccent),
                          child: Text('Forgot Password')),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterScreen()));
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.deepPurpleAccent),
                          child: Text('Register'))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
