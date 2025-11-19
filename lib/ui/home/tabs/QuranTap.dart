import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/style/AssetsManager.dart';
import 'package:islami_app/style/Colors_Manager.dart';
import 'package:islami_app/style/Constants.dart';
import 'package:islami_app/style/StringsManager.dart';
import 'package:islami_app/ui/home/widgets/SuraWidget.dart';

import '../widgets/RecentlySuraWidget.dart';

class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image:DecorationImage(image:AssetImage(AssetsManager.quran_background))
      ),
      child: SafeArea(
        child: InkWell(onTap: (){
          FocusScope.of(context).unfocus();
        },
          child: Padding(
            padding:EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                    child: Image.asset(AssetsManager.Logo)),
                TextField(
                  style:TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: ColorsManager.searchTextColor
                  ) ,
                  textAlignVertical: TextAlignVertical.center,
                  decoration:InputDecoration(
                    hintText: "Enter Sura Name",
                    hintStyle:TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: ColorsManager.searchTextColor
                    ),
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 55,
                      maxWidth: 55
                    ),
                    prefixIcon: Padding(
                      padding:EdgeInsets.all(14),
                      child: SvgPicture.asset(
                        AssetsManager.quran,
                      ),
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: ColorsManager.Primary,
                      )
                    )
                  ) ,
                ),
                SizedBox(height: 20,),
                Text(StringsManager.mostRecently,style: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.w700,
                  color:ColorsManager.searchTextColor
                ),),
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>RecentlySuraWidget() ,
                      separatorBuilder: (context, index) =>SizedBox(width: 10,) ,
                      itemCount:10
                  ),
                ),
                Text(StringsManager.surasList,style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w700,
                    color:ColorsManager.searchTextColor
                ),),
                SizedBox(height: 10,),
                Expanded(
                  flex: 2,
                  child: ListView.separated(
                    itemCount: 10,
                      itemBuilder: (context, index) => SuraWidget(
                        suraModel: suraList[index],
                      ),
                    separatorBuilder: (context, index) =>Padding(
                      padding:EdgeInsets.symmetric(
                        horizontal: 44
                      ),
                      child: Divider(
                        height: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
