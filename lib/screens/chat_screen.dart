import 'dart:math';

import 'package:flutter/material.dart';
import 'package:chitchat/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chitchat/screens/registration_screen.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'welcomeScreen';

  const ChatScreen({super.key});

  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final _auth = FirebaseAuth.instance;
  late FirebaseUser loggedInUser;

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser!;
      if (user != null) {
        loggedInUser = user as FirebaseUser;

      }
    }
    catch(e)
    {
      print(e);
    }
  }


  @override
  void initState() {

    super.initState();
    getCurrentUser();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                //Implement logout functionality
              }),
        ],
        title: const Text('⚡️Chat'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      //Implement send functionality.
                    },
                    child: const Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirebaseUser {
}


