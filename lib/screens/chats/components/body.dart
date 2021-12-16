import 'package:chat/components/filled_outline_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/models/Chat.dart';
import 'package:chat/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding) ,
          color:kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: "Son Mesajlar"),
              SizedBox(width: kDefaultPadding,),
              FillOutlineButton(press: () {}, text: "Aktif",isFilled: false,),

            ],
          )
        ),
        Expanded(
          child: ListView.builder(
          itemCount: chatsData.length,
          itemBuilder: (context, index)=> ChatCard(
              chat: chatsData[index],
              press:() => Navigator.push(context, MaterialPageRoute(builder: (context)=> MessagesScreen(),
              ))
              ),

    ),
        )
      ]
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key key,
     @required this.chat,
     @required this.press,
  }) : super(key: key);

  final Chat chat;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding *0.75),
        child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
              radius:24,
        backgroundImage: AssetImage(chat.image),
        ),

        if(chat.isActive)Positioned(
          right: 0,
          bottom: 0,

          child: Container(
            height:16,
            width: 16,
            decoration: BoxDecoration(
                color:kPrimaryColor,
                shape: BoxShape.circle,
                border: Border.all(color:Theme.of(context).scaffoldBackgroundColor,width: 3)
            ),
          ),
        )

        ],
          ),
          Expanded(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.64,
                  child: Text(
                      chat.name,
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height:8),
                Text(
                    chat.lastMessage,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )

              ],
            ),
          ),
          ),
          Opacity(
              opacity: 0.64,
              child: Text(chat.time)),
        ],
        ),
      ),
    );
  }
}
