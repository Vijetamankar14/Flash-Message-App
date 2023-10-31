import 'package:flash_messenger_app/RoundedButton.dart';
import 'package:flash_messenger_app/constants.dart';
import 'package:flash_messenger_app/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  static String id = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;

  late String password;
  late String email;
  bool spinner = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: spinner,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: "logo",
                  child: Container(
                    height: 180.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: kTextHintBox.copyWith(
                    hintText: 'Enter your email',
                  )),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextHintBox.copyWith(
                    hintText: 'Enter your password.',
                  )),
              const SizedBox(
                height: 24.0,
              ),
              RoundedButtonWidget(
                onPressed: () async {
                  setState(() {
                    spinner = true;
                  });
                  try {
                    final User = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (User != null) {
                      Navigator.pushNamed(context, ChatScreen.id);
                      
                    }
                    setState(() {
                      spinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
                color: Colors.blueAccent,
                title: "Log in",
              )
            ],
          ),
        ),
      ),
    );
  }
}
