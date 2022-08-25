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
              buildContainer(text: "Welcome",height:160, ),
              buildContainer(text: "My Name",color: Colors.grey),
              buildContainer(text: "Is",),
              buildContainer(text: "Hassan",color: Colors.grey),
              buildContainer(text: "Emad",),
              
            ],
          ),
        ));
  }
}
