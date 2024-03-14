import 'package:chitchat/constants.dart';
import 'package:flutter/material.dart';
import 'package:chitchat/components/buttons.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration';

 const  RegistrationScreen({super.key});
  @override
  RegistrationScreenState createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xFF95FF80) ,
    leading: IconButton(
    icon:const Icon(Icons.arrow_back, color: Colors.black,),
    onPressed: (){
    Navigator.pop(context);
    },
    ),),
      backgroundColor: kBackGroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

             SizedBox(
              height: 200.0,
              child: Image.asset('images/Registrationback.png'),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kMessageTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration:kMessageTextFieldDecoration.copyWith(hintText: 'Enter your Password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Buttons(color: const Color(0xFF95FF80), name: 'Register', onPressed: (){}), // Refactored code
          ],
        ),
      ),
    );
  }
}

