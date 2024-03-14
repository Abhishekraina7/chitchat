import 'package:flutter/material.dart';
import 'package:chitchat/constants.dart';
import 'package:chitchat/components/buttons.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'loginScreen';

  const LoginScreen({super.key});
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: const Color(0xFF95FF80) ,
        leading: IconButton(
          icon:const Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Hero(
                tag: 'logo',
                child: Container(
                  height: 170.0,
                  child: Image.asset('images/loginscreenback.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: const InputDecoration(
                hintText: 'Enter your email',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF95FF80), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF95FF80), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: const InputDecoration(
                hintText: 'Enter your password.',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF95FF80), width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color(0xFF95FF80), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Buttons(color: const Color(0xFF95FF80), name: 'Log in', onPressed: (){},),

          ],
        ),
      ),
    );
  }
}
// Padding(
// padding: const EdgeInsets.symmetric(vertical: 16.0),
// child: Material(
// color: const Color(0xFF95FF80),
// borderRadius: const BorderRadius.all(Radius.circular(30.0)),
// elevation: 5.0,
// child: MaterialButton(
// onPressed: () {
// //Implement login functionality.
// },
// minWidth: 200.0,
// height: 35.0,
// child:  const SingleChildScrollView(child: Text('Log In',)),
// ),
// ),
// ),
