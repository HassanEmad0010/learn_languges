import 'package:flutter/material.dart';

import '../models/DataModel.dart';
import '../shared/shared.componants/componants.dart';

class ColorsScreen extends StatelessWidget {
  List<DataModelClass> DataList = [
    DataModelClass(
        text: "Color Black", image: "assets/images/colors/color_black.png",audio:"assets/sounds/colors/black.wav"
    ),
    DataModelClass(
        text: "Color Brown", image: "assets/images/colors/color_brown.png",audio:"assets/sounds/colors/brown.wav"),
    DataModelClass(
        text: "Dusty Yellow", image: "assets/images/colors/color_dusty_yellow.png",audio:"assets/sounds/colors/dusty yellow.wav"),
    DataModelClass(
        text: "Color Gray", image: "assets/images/colors/color_gray.png",audio:"assets/sounds/colors/gray.wav"),
    DataModelClass(
        text: "Color Green", image: "assets/images/colors/color_green.png",audio:"assets/sounds/colors/green.wav"),
    DataModelClass(
        text: "Color Red", image: "assets/images/colors/color_red.png",audio:"assets/sounds/colors/red.wav"),
    DataModelClass(
        text: "Color White", image: "assets/images/colors/color_white.png",audio:"assets/sounds/colors/white.wav"),
    DataModelClass(
        text: "Color Yellow", image: "assets/images/colors/yellow.png",audio:"assets/sounds/colors/yellow.wav"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),


      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) =>
            buildData(dataModel: DataList[index]),
        scrollDirection: Axis.vertical,
        itemCount: DataList.length,
      ),
    );
  }
}
