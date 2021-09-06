import 'package:flutter/material.dart';
import 'package:flutter_tut1/forgotpasswordpage.dart';

class AccountPage extends StatelessWidget {
  final String email;
  const AccountPage({this.email});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Container(
            height: 240,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: Text(
                      'Dummy User',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    email,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Edit Profile'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ForgotPasswordScreen(
                              isForgot: false,
                            )));
              },
              leading: Icon(Icons.lock),
              title: Text('Change Password'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Log out'),
            ),
          )
        ],
      ),
    );
  }
}
