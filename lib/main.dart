import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chitchat/screens/welcome_screen.dart';
import 'package:chitchat/screens/login_screen.dart';
import 'package:chitchat/screens/registration_screen.dart';
import 'package:chitchat/screens/chat_screen.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const ChitChat());
}

class ChitChat extends StatelessWidget {
  const ChitChat({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      // home: const WelcomeScreen(), // anyscreen in home open first when the app is started
      initialRoute: WelcomeScreen.id, // similar to home.
      routes: {
        ChatScreen.id:(context) =>  const ChatScreen(),
        LoginScreen.id:(context) =>  const LoginScreen(),
        RegistrationScreen.id:(context) =>  const RegistrationScreen(),
        WelcomeScreen.id:(context) =>  const WelcomeScreen(),

      },
    );
  }
}
