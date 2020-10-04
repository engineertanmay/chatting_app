import 'package:chatting_app/ChatMessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textEditingController=new TextEditingController();
  final List<ChatMessage> _message=<ChatMessage>[];
  void handleSubmitted(String text){
    _textEditingController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
    );
    setState(() {
      _message.insert(0, message);
    });
  }
  Widget TextComposerWidget(){
    return IconTheme(
      data: IconThemeData(
        color: Colors.green,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0,),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: "Send a message..",),
                controller: _textEditingController,
                onSubmitted: handleSubmitted,
              ),
            ),
            Container(
              child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: (){
                    handleSubmitted(_textEditingController.text);
                  }),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
                reverse:true ,
                itemBuilder: (_,int index)=>_message[index],
              itemCount: _message.length,
            )),
        Divider(height: 8,),
        Container(
          decoration: BoxDecoration(
             color: Theme.of(context).cardColor,
          ),
          child: TextComposerWidget(),
        ),
      ],
    );
  }
}
