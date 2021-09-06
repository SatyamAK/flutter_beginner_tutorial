import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  final bool isForgot;
  const ForgotPasswordScreen({Key key, this.isForgot}) : super(key: key);
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Center(
            child: Form(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    'Reset Password',
                    style: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                      decoration: InputDecoration(
                          hintText:
                              (widget.isForgot) ? 'Email' : 'New Password',
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
                              )))),
                  SizedBox(
                    height: (widget.isForgot) ? 0 : 8,
                  ),
                  (widget.isForgot)
                      ? SizedBox()
                      : TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Re-enter password',
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
                                  )))),
                  SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.all(14),
                          primary: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22))),
                      child: Text('Submit')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
