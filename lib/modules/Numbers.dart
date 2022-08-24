import 'package:flutter/material.dart';

import '../models/DataModel.dart';
import '../shared/shared.componants/componants.dart';
//import 'package:audioplayers/audioplayers.dart';

class NumberScreen extends StatelessWidget {
  List<DataModelClass> DataList = [
    DataModelClass(
        text: "Number One", image: "assets/images/numbers/number_one.png",//audio: "assets/sounds/numbers/number_one_sound.mp3"
    ),
    DataModelClass(
        text: "Number Two", image: "assets/images/numbers/number_two.png",//audio: "assets/sounds/numbers/number_two_sound.mp3"
    ),
    DataModelClass(
        text: "Number Three", image: "assets/images/numbers/number_three.png",//audio: "assets/sounds/numbers/number_three_sound.mp3"
    ),
    DataModelClass(
        text: "Number Four", image: "assets/images/numbers/number_four.png",//audio: "assets/sounds/numbers/number_four_sound.mp3"
    ),
    DataModelClass(
        text: "Number Five", image: "assets/images/numbers/number_five.png",//audio: "assets/sounds/numbers/number_five_sound.mp3"
    ),/*
    DataModelClass(
        text: "Number Six", image: "assets/images/numbers/number_six.png",audio: "assets/sounds/numbers/number_six_sound.mp3"),
    DataModelClass(
        text: "Number Seven", image: "assets/images/numbers/number_seven.png",audio: "assets/sounds/numbers/number_seven_sound.mp3"),
    DataModelClass(
        text: "Number eight", image: "assets/images/numbers/number_eight.png",audio: "assets/sounds/numbers/number_eight_sound.mp3"),
    DataModelClass(
        text: "Number Nine", image: "assets/images/numbers/number_nine.png",audio: "assets/sounds/numbers/number_nine_sound.mp3"),
    DataModelClass(
        text: "Number Ten", image: "assets/images/numbers/number_ten.png",audio: "assets/sounds/numbers/number_ten_sound.mp3"),*/
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
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
