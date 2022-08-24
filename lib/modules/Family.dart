import 'package:flutter/material.dart';

import '../models/DataModel.dart';
import '../shared/shared.componants/componants.dart';

class FamilyScreen extends StatelessWidget {
  List<DataModelClass> DataList = [
    DataModelClass(
        text: "Father", image: "assets/images/family_members/family_father.png",audio:"assets/sounds/family_members/father.wav"
    ),
    DataModelClass(
        text: "Mother", image: "assets/images/family_members/family_mother.png",audio:"assets/sounds/family_members/mother.wav"),
    DataModelClass(
        text: "Son", image: "assets/images/family_members/family_son.png",audio:"assets/sounds/family_members/son.wav"),
    DataModelClass(
        text: "Daughter", image: "assets/images/family_members/family_daughter.png",audio:"assets/sounds/family_members/daughter.wav"),
    DataModelClass(
        text: "Grand Father", image: "assets/images/family_members/family_grandfather.png",audio:"assets/sounds/family_members/grand father.wav"),
    DataModelClass(
        text: "Grand Mother", image: "assets/images/family_members/family_grandmother.png",audio:"assets/sounds/family_members/grand mother.wav"),
    DataModelClass(
        text: "Older Brother", image: "assets/images/family_members/family_older_brother.png",audio:"assets/sounds/family_members/older bother.wav"),
    DataModelClass(
        text: "Older Sister", image: "assets/images/family_members/family_older_sister.png",audio:"assets/sounds/family_members/older sister.wav"),
    DataModelClass(
        text: "Younger Brother", image: "assets/images/family_members/family_younger_brother.png",audio:"assets/sounds/family_members/younger brohter.wav"),
    DataModelClass(
        text: "Younger Sister", image: "assets/images/family_members/family_younger_sister.png",audio:"assets/sounds/family_members/younger sister.wav"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family"),

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
