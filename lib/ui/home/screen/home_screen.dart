import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/style/AssetsManager.dart';
import 'package:islami_app/style/Colors_Manager.dart';
import 'package:islami_app/style/StringsManager.dart';
import 'package:islami_app/ui/home/tabs/AhadithTap.dart';
import 'package:islami_app/ui/home/tabs/QuranTap.dart';
import 'package:islami_app/ui/home/tabs/RadioTap.dart';
import 'package:islami_app/ui/home/tabs/SebhaTap.dart';
import 'package:islami_app/ui/home/tabs/TimeTap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="home";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<Widget> taps=[
    QuranTap(),
    AhadithTap(),
    SebhaTap(),
    RadioTap(),
    TimeTap()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorsManager.Secondary,
      bottomNavigationBar:NavigationBar(
        selectedIndex:selectedIndex,
        onDestinationSelected: (Index){
        setState(() {
          selectedIndex=Index;
        });
        },
        backgroundColor: ColorsManager.Primary,
          indicatorColor: ColorsManager.navItemBlack,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: [
            NavigationDestination(
                icon:SvgPicture.asset(AssetsManager.quran,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.Secondary,
                      BlendMode.srcIn),
                ),
                selectedIcon: SvgPicture.asset(AssetsManager.quran,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.Teritary,
                      BlendMode.srcIn),
                ),
                label:StringsManager.quran
            ),
            NavigationDestination(
                icon:SvgPicture.asset(AssetsManager.ahadeth,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.Secondary,
                      BlendMode.srcIn),
                ),
                selectedIcon: SvgPicture.asset(AssetsManager.ahadeth,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.Teritary,
                      BlendMode.srcIn),
                ),
                label:StringsManager.quran
            ),
            NavigationDestination(
                icon:SvgPicture.asset(AssetsManager.sebha,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.Secondary,
                      BlendMode.srcIn),
                ),
                selectedIcon: SvgPicture.asset(AssetsManager.sebha,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.Teritary,
                      BlendMode.srcIn),
                ),
                label:StringsManager.quran
            ),
            NavigationDestination(
                icon:SvgPicture.asset(AssetsManager.radio,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.Secondary,
                      BlendMode.srcIn),
                ),
                selectedIcon: SvgPicture.asset(AssetsManager.radio,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.Teritary,
                      BlendMode.srcIn),
                ),
                label:StringsManager.quran
            ),
            NavigationDestination(
                icon:SvgPicture.asset(AssetsManager.time,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.Secondary,
                      BlendMode.srcIn),
                ),
                selectedIcon: SvgPicture.asset(AssetsManager.time,
                  colorFilter: ColorFilter.mode(
                      ColorsManager.Teritary,
                      BlendMode.srcIn),
                ),
                label:StringsManager.quran
            ),

          ]
      ),
      body: taps[selectedIndex],


    );
  }
}
