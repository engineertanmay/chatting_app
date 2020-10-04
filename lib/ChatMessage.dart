import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const String _name="tanmay bala";
class ChatMessage extends StatelessWidget {
  final String text;
  ChatMessage({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
        ],
      ),
    );
  }
}
