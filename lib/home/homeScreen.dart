import 'package:MoneyLotto/home/moneyLottoScreen.dart';
import 'package:MoneyLotto/home/rewardsTabIconData.dart';
import 'package:MoneyLotto/games/titles.dart';
import 'package:MoneyLotto/videoPage/video.dart';
import 'package:MoneyLotto/wallet/wallet.dart';
import 'package:MoneyLotto/misc/themes/appTheme2.dart';
import 'package:flutter/material.dart';
import 'package:MoneyLotto/bottomNavigationView/bottomBarView.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'dart:async';


class HomeScreen extends StatefulWidget {
   final String currentUserId;
  HomeScreen({Key key, @required this.currentUserId}) : super(key: key);

  @override
  State createState() => HomeScreenState(currentUserId: currentUserId);
}

class HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

   HomeScreenState({Key key, @required this.currentUserId});
  final String currentUserId;
   AnimationController animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: AppTheme2.background,
  );

  @override
  void initState() {
    BackButtonInterceptor.add(myInterceptor);
    tabIconsList.forEach((tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController =
        AnimationController(duration: Duration(milliseconds: 600), vsync: this);
    tabBody = MoneyLottoScreen(
      animationController: animationController,
    );
    super.initState();
  }

 bool myInterceptor(bool stopDefaultButtonEvent) {
    print("BACK BUTTON!"); // Do some stuff.
    return true;
  }
  
  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme2.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (index) {
            if (index == 0) {
              animationController.reverse().then((data) {
                if (!mounted) return;
                setState(() {
                  tabBody = MoneyLottoScreen(
                      animationController: animationController);
                });
              });
            } else if (index == 2) {
              animationController.reverse().then((data) {
                if (!mounted) return;
                setState(() {
                  tabBody =
                      VideoList();
                });
              });
            } else if (index == 1) {
              animationController.reverse().then((data) {
                if (!mounted) return;
                setState(() {
                  tabBody = DesignCourseHomeScreen(
                      animationController: animationController);
                });
              });
            } else if (index == 3) {
              animationController.reverse().then((data) {
                if (!mounted) return;
                setState(() {
                  tabBody = WalletPage();
                });
              });
            }
          },
        ),
      ],
    );
  }
}
