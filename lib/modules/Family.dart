import 'package:flutter/material.dart';

import '../models/DataModel.dart';
import '../shared/shared.componants/componants.dart';

class FamilyScreen extends StatelessWidget {
  List<DataModelClass> DataList = [
    DataModelClass(
        text: "Father", image: "assets/images/family_members/family_father.png"),
    DataModelClass(
        text: "Mother", image: "assets/images/family_members/family_mother.png"),
    DataModelClass(
        text: "son", image: "assets/images/family_members/family_son.png"),
    DataModelClass(
        text: "Daughter", image: "assets/images/family_members/family_daughter.png"),
    DataModelClass(
        text: "Grand Father", image: "assets/images/family_members/family_grandfather.png"),
    DataModelClass(
        text: "Grand Mother", image: "assets/images/family_members/family_grandmother.png"),
    DataModelClass(
        text: "Older Brother", image: "assets/images/family_members/family_older_brother.png"),
    DataModelClass(
        text: "Older Sister", image: "assets/images/family_members/family_older_sister.png"),

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
