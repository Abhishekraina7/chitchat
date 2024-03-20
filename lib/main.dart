import 'package:flutter/material.dart';
import 'package:chitchat/screens/welcome_screen.dart';
import 'package:chitchat/screens/login_screen.dart';
import 'package:chitchat/screens/registration_screen.dart';
import 'package:chitchat/screens/chat_screen.dart';

void main() => runApp(const ChitChat());

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
      initialRoute: ChatScreen.id, // similar to home.
      routes: {
        ChatScreen.id:(context) =>  const ChatScreen(),
        LoginScreen.id:(context) =>  const LoginScreen(),
        RegistrationScreen.id:(context) =>  const RegistrationScreen(),
        WelcomeScreen.id:(context) =>  const WelcomeScreen(),

      },
    );
  }
}
