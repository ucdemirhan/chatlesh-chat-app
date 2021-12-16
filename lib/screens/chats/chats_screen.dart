import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class ChatsScreen extends StatefulWidget {

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  int _selectedIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.person_add_alt_1,color:Colors.white),

      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value){
        setState(() {
          _selectedIndex=value;
        });
      },
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.messenger),label: "Konuşmalar"),
      BottomNavigationBarItem(icon: Icon(Icons.people),label:"Arkadaşlar"),
      BottomNavigationBarItem(icon: Icon(Icons.call),label:"Aramalar"),
      BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14,
        backgroundImage: AssetImage("assets/images/user_2.png"),
      ),
        label:"Profil"
      )
    ],);
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text("Konuşmalar"),
        actions: [
          IconButton(
          onPressed: () {},
          icon: Icon(Icons.search))],
    );
  }
}
