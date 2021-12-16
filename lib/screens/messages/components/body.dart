import 'package:chat/constants.dart';
import 'package:chat/models/ChatMessage.dart';
import 'package:flutter/material.dart';

  class Body extends StatelessWidget {
    //const ({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Column(
        children: [
          Expanded(
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ListView.builder(
            itemCount: demeChatMessages.length,
                itemBuilder: (context,index)=>Message(message: demeChatMessages[index]) ),
              )),
          ChatInputField(),

        ],
      );
    }
  }

class Message extends StatelessWidget {
  const Message({

    Key key,
    @required this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:kDefaultPadding),
      child: Row(
        mainAxisAlignment:
        message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if(!message.isSender) ...[
            CircleAvatar(radius: 12, backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            SizedBox(width: kDefaultPadding/2),
          ],
          TextMessage(message: message),
        ],
      ),
    );
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key key,
    this.message,
  }) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    return Container(
       // margin: EdgeInsets.only(top:kDefaultPadding),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*0.75,vertical: kDefaultPadding/2,
        ),
        decoration: BoxDecoration(
            color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.08),
            borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
            message.text,
          style: TextStyle(color: message.isSender ? Colors.white:Theme.of(context).textTheme.bodyText1.color),
        ),
    );
  }
}

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
          vertical: kDefaultPadding/2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [BoxShadow(
          offset: Offset(0,4),
          blurRadius: 32,
          color: Color(0xFF087949).withOpacity(0.08),
        ),
        ],

      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic,color: kPrimaryColor),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                padding:EdgeInsets.symmetric(
                    horizontal:kDefaultPadding*0.75),
                decoration: BoxDecoration(color:kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40),

                ),
                child: Row(
                  children: [Icon(Icons.sentiment_satisfied_alt_outlined,
                      color:Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color
                          .withOpacity(0.64),
                  ),
                    SizedBox(width: kDefaultPadding/4),
                    Expanded(child:TextField(
                    decoration: InputDecoration(
                      hintText: "Mesaj yaz",
                      border: InputBorder.none,
                    ),
                    )
                    ),
                    Icon(Icons.attach_file,
                      color:Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color
                          .withOpacity(0.64),
                    ),
                    SizedBox(width:kDefaultPadding /4),
                    Icon(Icons.camera_alt_outlined,
                      color:Theme.of(context)
                          .textTheme
                          .bodyText1
                          .color
                          .withOpacity(0.64),
                    ),
                  ],
                ),
              )
            )
          ],
        )
      ),
    );
  }
}
