import 'package:chitchat/constants.dart';
import 'package:chitchat/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:chitchat/screens/registration_screen.dart';
class WelcomeScreen extends StatefulWidget {

  static const String id = 'welcomeScreen';
  
   const WelcomeScreen({super.key});
  
  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin { //By using this mixin our state act as the ticker for animation controller

  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, // read the documentation to fully understand about this
    duration: const Duration(seconds: 2)
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Stack(
        children: <Widget>[
          Center(
            child: Hero(
              tag: 'flash',
              child: Container(
                margin : const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 250.0),
                height: 200,
                child:  Image.asset('images/welcomescreenback.png'),
              ),
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
                      margin: const EdgeInsets.fromLTRB(40.0, 0.0, 50.0, 0.0),
                      height: 50,
                      width: 50,
                      // child: Image.asset('images/logo.png',),
                    ),
                    // const Text(
                    //   'Welcome',
                    //   style: TextStyle(
                    //     fontSize: 45.0,
                    //     fontWeight: FontWeight.w900,
                    //     color: Colors.lightGreen,
                    //   ),
                    // ),
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
                  color: const Color(0xFF95FF80),
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
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
                  color: const Color(0xFF1E284C),
                  borderRadius: BorderRadius.circular(30.0),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen()));                    },
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
                child: const Text('Welcome to ChitChat!', style: TextStyle(fontWeight: FontWeight.w500),),
              ),
            ],
          ),
    ],
      ),
    );
  }
}
