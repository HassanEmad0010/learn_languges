import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leaen_languges/modules/Hassan.dart';
import '../modules/Colors.dart';
import '../modules/Family.dart';
import '../modules/Numbers.dart';
import '../shared/shared.componants/componants.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {});
          print(value);
          currentindex = value;
          currentindex == 1
              ? Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HassanClass(),
                  ),
                )
              : null;
        },
        currentIndex: currentindex,
        iconSize: 40,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: ""),
        ],
      ),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              setState(() {});
              pressed = !pressed;
            },
            icon: pressed ? Icon(Icons.menu_book) : Icon(Icons.menu)),
        title: const Text("Let's Learn!"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    print("1");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NumberScreen(),
                      ),
                    );
                  },
                  child: buildContainer(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      text: 'Numbers')),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    print("2");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ColorsScreen(),
                      ),
                    );
                  },
                  child: buildContainer(
                      shape: BoxShape.circle,
                      color: Colors.lightBlue,
                      text: 'Colors')),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FamilyScreen(),
                      ),
                    );
                    print("3");
                  },
                  child: buildContainer(
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                      text: 'Family')),
            ],
          ),
        ),
      ),
    );
  }
}
