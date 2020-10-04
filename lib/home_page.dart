import 'package:chatting_app/ChatScreen.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Chat App"),
        ),
        body: ChatScreen(),
      ),
    );
  }
}
