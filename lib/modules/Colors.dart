import 'package:flutter/material.dart';

import '../models/DataModel.dart';
import '../shared/shared.componants/componants.dart';

class ColorsScreen extends StatelessWidget {
  List<DataModelClass> DataList = [
    DataModelClass(
        text: "Color Black", image: "assets/images/colors/color_black.png",//audio:"assets/sounds/colors/black.wav"
    ),
    DataModelClass(
        text: "Color Brown", image: "assets/images/colors/color_brown.png"),
    DataModelClass(
        text: "Color Yellow", image: "assets/images/colors/color_dusty_yellow.png"),
    DataModelClass(
        text: "Color Gray", image: "assets/images/colors/color_gray.png"),
    DataModelClass(
        text: "Color Green", image: "assets/images/colors/color_green.png"),
    DataModelClass(
        text: "Color Red", image: "assets/images/colors/color_red.png"),
    DataModelClass(
        text: "Color White", image: "assets/images/colors/color_white.png"),
    DataModelClass(
        text: "Color Yellow", image: "assets/images/colors/yellow.png"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),


      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) =>
            buildData(DataModelClass: DataList[index]),
        scrollDirection: Axis.vertical,
        itemCount: DataList.length,
      ),
    );
  }
}
