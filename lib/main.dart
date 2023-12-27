import 'package:flutter/material.dart';
import 'package:chitchat/screens/welcome_screen.dart';
import 'package:chitchat/screens/login_screen.dart';
import 'package:chitchat/screens/registration_screen.dart';
import 'package:chitchat/screens/chat_screen.dart';

void main() => runApp(const FlashChat());

class FlashChat extends StatelessWidget {
  const FlashChat({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
