
import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';


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

  required DataModelClass,

  Color color=Colors.brown,
  //required String image,
 // required String text,
  double width=double.infinity,
  double height=140,
  Color? textColor= Colors.white,
})
=>Row(
  
  children: [
    Image.asset(DataModelClass.image),
    Expanded(
      child: Text(DataModelClass.text,
      style: TextStyle(color: textColor,fontSize: 25),),
    ),
    IconButton(onPressed: (){

     /* AssetsAudioPlayer.newPlayer().open(
        Audio(DataModelClass.audio),
        showNotification: true,
      );*/




    }, icon: const Icon(Icons.arrow_forward_ios)),

  ],
);