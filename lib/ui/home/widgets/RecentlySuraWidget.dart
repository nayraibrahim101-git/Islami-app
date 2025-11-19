import 'package:flutter/material.dart';
import 'package:islami_app/style/AssetsManager.dart';
import 'package:islami_app/style/Colors_Manager.dart';

class RecentlySuraWidget extends StatelessWidget {
  const RecentlySuraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorsManager.Primary
      ) ,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("El Anbiya",style:TextStyle(
                  fontSize: 24,fontWeight: FontWeight.w700,
                  color:ColorsManager.Secondary
                ),),
                Text("الأنبياء",style:TextStyle(
                    fontSize: 24,fontWeight: FontWeight.w700,
                    color:ColorsManager.Secondary
                ),),
                Text("112verses",style:TextStyle(
                    fontSize:14,fontWeight: FontWeight.w700,
                    color:ColorsManager.Secondary
                ),),
              ],
            ),
          ),
          Image.asset(
              AssetsManager.quran_card
          )
        ],
      ),
    );
        
  }
}
