import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leaen_languges/shared/shared.componants/componants.dart';

class HassanClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hellow Friend!"),
          centerTitle: true,
        ),
        body:
            
        SingleChildScrollView(
          child: Column(
            children: [
              buildContainer(text: "My Name"),
              buildContainer(text: "Is",color: Colors.grey),
              buildContainer(text: "Hassan"),
              buildContainer(text: "Emad",color: Colors.grey),
              
              buildContainer(text: "Welcome",height:160 ),
            ],
          ),
        ));
  }
}
