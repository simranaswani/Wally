import 'package:MoneyLotto/games/titles.dart';
import 'package:MoneyLotto/home/scratchCardView.dart';
import 'package:MoneyLotto/home/pointsCardView.dart';
import 'package:MoneyLotto/home/scratchCardViewNew.dart';
import 'package:MoneyLotto/misc/themes/appTheme2.dart';
import 'package:MoneyLotto/home/rewardsView.dart';
import 'package:MoneyLotto/home/userTitleView.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:MoneyLotto/bottomNavigationView/bottomBarView.dart';
import 'package:MoneyLotto/home/rewardsTabIconData.dart';
import 'package:MoneyLotto/offerwall/offerwallMainScreen.dart';
import 'package:MoneyLotto/wallet/wallet.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:MoneyLotto/home/pedometerView.dart';
import 'package:MoneyLotto/home/pedometerScreen.dart';
import 'package:MoneyLotto/main.dart';
class MoneyLottoScreen extends StatefulWidget {
  final AnimationController animationController;
  final String currentUserId;

  const MoneyLottoScreen(
      {Key key, this.animationController, this.currentUserId})
      : super(key: key);
  @override
  _MoneyLottoScreenState createState() => _MoneyLottoScreenState();
}

class _MoneyLottoScreenState extends State<MoneyLottoScreen>
    with TickerProviderStateMixin {
  Animation<double> topBarAnimation;
  AnimationController animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: AppTheme2.background,
  );
  List<Widget> listViews = List<Widget>();
  var scrollController = ScrollController();
  double topBarOpacity = 0.0;

  GlobalKey keyButton = GlobalKey();
  GlobalKey keyButton2 = GlobalKey();
  GlobalKey keyButton3 = GlobalKey();
  GlobalKey keyButton4 = GlobalKey();
  GlobalKey keyButton5 = GlobalKey();

  @override
  void initState() {
    fetchName();
    topBarAnimation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: widget.animationController,
        curve: Interval(0, 0.5, curve: Curves.fastOutSlowIn)));
    addAllListData();
    scrollController.addListener(() {
      if (scrollController.offset >= 24) {
        if (topBarOpacity != 1.0) {
          setState(() {
            topBarOpacity = 1.0;
          });
        }
      } else if (scrollController.offset <= 24 &&
          scrollController.offset >= 0) {
        if (topBarOpacity != scrollController.offset / 24) {
          setState(() {
            topBarOpacity = scrollController.offset / 24;
          });
        }
      } else if (scrollController.offset <= 0) {
        if (topBarOpacity != 0.0) {
          setState(() {
            topBarOpacity = 0.0;
          });
        }
      }
    });

    super.initState();
  }

  void addAllListData() {
    var count = 9;
    listViews.add(
      UserTitleView(
        titleTxt: '',
        subTxt: '',
        animation: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController,
            curve:
                Interval((1 / count) * 0, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController,
      ),
    );
    listViews.add(
      GestureDetector(
          child: Container(
            child: PointsCardView(
              animation: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                  parent: widget.animationController,
                  curve: Interval((1 / count) * 1, 1.0,
                      curve: Curves.fastOutSlowIn))),
              animationController: widget.animationController,
            ),
            key: keyButton,
            height: 256,
          ),
          onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => ScratchCardScreen(),
            //     ));
          }),
    );
    listViews.add(
      UserTitleView(
        titleTxt: 'Daily tasks',
        subTxt: '',
        animation: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController,
            curve:
                Interval((1 / count) * 2, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController,
      ),
    );

    listViews.add(
      GestureDetector(
          child: Container(
            child: RewardsView(
              mainScreenAnimation: Tween(begin: 0.0, end: 1.0).animate(
                  CurvedAnimation(
                      parent: widget.animationController,
                      curve: Interval((1 / count) * 3, 1.0,
                          curve: Curves.fastOutSlowIn))),
              mainScreenAnimationController: widget.animationController,
            ),
            key: keyButton2,
            height: 216,
          ),
          onTap: () {}),
    );
    listViews.add(
UserTitleView(
titleTxt: 'Pedometer',
subTxt: '',
animation: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
parent: widget.animationController,
curve:
Interval((1 / count) * 2, 1.0, curve: Curves.fastOutSlowIn))),
animationController: widget.animationController,
),
);
    listViews.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                PedometerScreen()),
      );
        },
              child: PedometerView(
            mainScreenAnimation: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                parent: widget.animationController,
                curve:
                    Interval((1 / count) * 8, 1.0, curve: Curves.fastOutSlowIn))),
            mainScreenAnimationController: widget.animationController),
      ),
    );

    listViews.add(
      UserTitleView(
        titleTxt: 'Scratch card',
        subTxt: '',
        animation: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController,
            curve:
                Interval((1 / count) * 4, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController,
      ),
    );

    listViews.add(
      GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScratchScreen(),
              ));
        },
        child: Container(
          child: ScratchCardView(
            animation: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                parent: widget.animationController,
                curve: Interval((1 / count) * 5, 1.0,
                    curve: Curves.fastOutSlowIn))),
            animationController: widget.animationController,
          ),
        ),
      ),
    );
    listViews.add(
      UserTitleView(
        titleTxt: '',
        //subTxt: 'Aqua SmartBottle',
        animation: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: widget.animationController,
            curve:
                Interval((1 / count) * 6, 1.0, curve: Curves.fastOutSlowIn))),
        animationController: widget.animationController,
      ),
    );

  }

  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 50));
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme2.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            getMainListViewUI(),
            getAppBarUI(),
            bottomBar(),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            )
          ],
        ),
      ),
    );
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        Expanded(
          child: SizedBox(),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OfferWallMainScreen(),
                ));
          },
          child: Container(
            key: keyButton3,
            child: BottomBarView(
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
                      tabBody = OfferWallMainScreen();
                    });
                  });
                } else if (index == 1) {
                  animationController.reverse().then((data) {
                    if (!mounted) return;
                    setState(() {
                      tabBody = OfferWallMainScreen(
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
          ),
        ),
      ],
    );
  }

  Widget getMainListViewUI() {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return SizedBox();
        } else {
          return ListView.builder(
            controller: scrollController,
            padding: EdgeInsets.only(
              top: AppBar().preferredSize.height +
                  MediaQuery.of(context).padding.top +
                  24,
              bottom: 62 + MediaQuery.of(context).padding.bottom,
            ),
            itemCount: listViews.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              widget.animationController.forward();
              return listViews[index];
            },
          );
        }
      },
    );
  }

 String userTestName = '';

fetchName() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      userTestName = prefs.getString('name') ?? '';
    id = prefs.getString('id') ?? '';
  
    }

  Widget name(BuildContext context) {
    if(id != '') {
   return new StreamBuilder(
        stream: Firestore.instance.collection('users').document(id).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text(
              '',
              textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: AppTheme2.fontName,
        fontWeight: FontWeight.w700,
        fontSize: 22 + 6 - 6 * topBarOpacity,
        letterSpacing: 1.2,
        color: AppTheme2.darkerText,
      ),
            );
          }
          var userDocument = snapshot.data;
          var userName = userDocument["full_name"].toString();
        return Text('Welcome back, $userName',
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: AppTheme2.fontName,
        fontWeight: FontWeight.w700,
        fontSize: 22 + 6 - 6 * topBarOpacity,
        letterSpacing: 1.2,
        color: Color(0xFFFF8C3B),
      ),
    );
        });
    } 
    else if(id == '') {
              return Text(
              '',
              textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: AppTheme2.fontName,
        fontWeight: FontWeight.w700,
        fontSize: 22 + 6 - 6 * topBarOpacity,
        letterSpacing: 1.2,
        color: AppTheme2.darkerText,
      ),
            );
    }
  }

  Widget getAppBarUI() {
    return Column(
      children: <Widget>[
        AnimatedBuilder(
          animation: widget.animationController,
          builder: (BuildContext context, Widget child) {
            return FadeTransition(
              opacity: topBarAnimation,
              child: new Transform(
                transform: new Matrix4.translationValues(
                    0.0, 30 * (1.0 - topBarAnimation.value), 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppTheme2.white.withOpacity(topBarOpacity),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color:
                              AppTheme2.grey.withOpacity(0.4 * topBarOpacity),
                          offset: Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).padding.top,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 16,
                            right: 16,
                            top: 16 - 8.0 * topBarOpacity,
                            bottom: 12 - 8.0 * topBarOpacity),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: name(context),
                              ),
                            ),
                            SizedBox(
                              height: 38,
                              width: 38,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                                right: 8,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                  ),
                                  Text(
                                    "",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: AppTheme2.fontName,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 18,
                                      letterSpacing: -0.2,
                                      color: AppTheme2.darkerText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 38,
                              width: 38,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
