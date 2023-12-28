import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});
  
  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin : const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
              child: Image.asset('images/Back2.png'),
            ),
          ),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                // margin : const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 100.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                      height: 50,
                      width: 50,
                      child: Image.asset('images/logo.png',),
                    ),
                    const Text(
                      'ChitChat',
                      style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                )
              ),
              const SizedBox(
                height: 48.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      //Go to login screen.
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: const Text(
                      'Log In',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      //Go to registration screen.
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: const Text(
                      'Register',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(125.0, 750.0, 0.0, 0.0),
                child: const Text('Welcome to Chit Chat!', style: TextStyle(fontWeight: FontWeight.w400),),
              ),
            ],
          ),
    ],
      ),
    );
  }
}
