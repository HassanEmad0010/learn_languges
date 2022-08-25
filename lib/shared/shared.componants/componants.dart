
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

import '../../models/DataModel.dart';


Widget buildContainer ({

  Color color=Colors.brown,
  required String text,
  double width=double.infinity,
  double height=140,

})

{

  return Stack(
    alignment: AlignmentDirectional.center,
    children: [
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
      ),

    ),
    Text(text,style: const TextStyle(fontSize: 30,fontWeight: FontWeight.w400,),),

    ],
  );

}


Widget buildData ({

  required DataModelClass dataModel,

  Color color=Colors.brown,
  //required String image,
 // required String text,
  double width=double.infinity,
  double height=140,
  Color? textColor= Colors.white,
})
=>Row(
  
  children: [
    Image.asset(dataModel.image),
    Expanded(
      child: Text(dataModel.text,
      style: TextStyle(color: textColor,fontSize: 25),),
    ),
    IconButton(onPressed: (){

      AssetsAudioPlayer.newPlayer().open(
        Audio(dataModel.audio),
        showNotification: true,
        volume: double.infinity,

      );




    }, icon: const Icon(Icons.arrow_forward_ios)),

  ],
);