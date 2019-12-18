import 'package:MoneyLotto/home/homeScreen.dart';
import 'package:MoneyLotto/misc/themes/appTheme2.dart';
import 'package:MoneyLotto/main.dart';
import 'package:MoneyLotto/home/rewardsData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pollfish/flutter_pollfish.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';


class RewardsView extends StatefulWidget {
  final AnimationController mainScreenAnimationController;
  final Animation mainScreenAnimation;
  const RewardsView(
      {Key key, this.mainScreenAnimationController, this.mainScreenAnimation})
      : super(key: key);
  @override
  _RewardsViewState createState() => _RewardsViewState();
}

class _RewardsViewState extends State<RewardsView>
    with TickerProviderStateMixin {
  AnimationController animationController;
  List<RewardsData> rewardsData = RewardsData.tabIconsList;

  var coins = 0,
      lifetimeCoins,
      adsSeen,
      pollsCompleted,
      _adCounter,
      _pollCounter,
      spinTickets;
  String name;
  String id = '';
  bool _isAdButtonDisabled, _isPollButtonDisabled;
  Timer timer;

  void adCoinReward() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    id = prefs.getString('id') ?? '';
    if(id != '') {
    var adReward = 20;
    Firestore.instance
        .collection('users')
        .document(id)
        .get()
        .then((DocumentSnapshot ds) {
      coins = ds["coins"];
      lifetimeCoins = ds["lifetime_coins"];
      coins += adReward;
      lifetimeCoins += adReward;
      Firestore.instance
          .collection('users')
          .document(id)
          .updateData({'coins': coins, 'lifetime_coins': lifetimeCoins})
          .then((data) async {})
          .catchError((err) {});
    });
    }
    else {
      print('error');
    }
  }

  void pollCoinReward() {
    var pollReward = 300;
     if(id != '') {
    Firestore.instance
        .collection('users')
        .document(id)
        .get()
        .then((DocumentSnapshot ds) {
      coins = ds["coins"];
      lifetimeCoins = ds["lifetime_coins"];
      coins += pollReward;
      lifetimeCoins += pollReward;
      Firestore.instance
          .collection('users')
          .document(id)
          .updateData({'coins': coins, 'lifetime_coins': lifetimeCoins})
          .then((data) async {})
          .catchError((err) {});
    });
     }
     else {
       print('error');
     }
  }

  MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: <String>[],
  );

  void initButtons() {
    _isAdButtonDisabled = false;
    _isPollButtonDisabled = false;
  }

  void initPollfish() {
    FlutterPollfish.instance.init(
        apiKey: '542ca60e-71db-4953-abf4-0f0fc62c69c4',
        pollfishPosition: 5,
        indPadding: 40,
        rewardMode: true,
        releaseMode: false,
        requestUUID: 'USER_INTERNAL_ID',
        offerwallMode: false);
    FlutterPollfish.instance
        .setPollfishCompletedSurveyListener(onPollfishSurveyCompleted);
    FlutterPollfish.instance
        .setPollfishUserNotEligibleListener(onPollfishUserNotEligible);
  }

  @override
  void initState() {
    initButtons();
    initPollfish();
    animationController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    RewardedVideoAd.instance.listener =
        (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {
      print("RewardedVideoAd event $event");
      if (event == RewardedVideoAdEvent.rewarded) {
        setState(() {
          
          adCoinReward();
          _incrementAdCounter();
          if(id != '') {
          Firestore.instance
              .collection('users')
              .document(id)
              .get()
              .then((DocumentSnapshot ds) {
            adsSeen = ds["ads_seen"];
            adsSeen += 1;
          });
          }
        });
      }
    };
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    animationController.dispose();
    super.dispose();
  }

  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 50));
    return true;
  }

  void onPollfishSurveyCompleted(String result) => setState(() {
        List<String> surveyCharacteristics = result.split(',');
        if (surveyCharacteristics.length >= 4) {
          print(
              'Survey Completed: - SurveyInfo with CPA: ${surveyCharacteristics[0]} and IR: ${surveyCharacteristics[1]} and LOI: ${surveyCharacteristics[2]} and SurveyClass: ${surveyCharacteristics[3]} and RewardName: ${surveyCharacteristics[4]}  and RewardValue: ${surveyCharacteristics[5]}');
        }
        if(id!='') {
        Firestore.instance
            .collection('users')
            .document(id)
            .get()
            .then((DocumentSnapshot ds) {
          pollsCompleted = ds["polls_completed"];
          pollsCompleted += 1;
        });
        }
        pollCoinReward();
        _incrementPollCounter();
      });
  

  void disablePollfish() {
    print('Pollfish re-enabled');
    _isPollButtonDisabled = true;
  }

  void onPollfishUserNotEligible() {
    setState(() {
      print('Pollfish disabled due to ineligibility');
      _isPollButtonDisabled = true;
      timer = Timer.periodic(
          Duration(seconds: 7200), (Timer t) => disablePollfish());
    });
  }

  void enableAds() {
    print('timer is completed');
    _adCounter = 0;
    _isAdButtonDisabled = false;
  }

  void _incrementAdCounter() async {
    setState(() {
      _adCounter++;
      if (_adCounter == 2 || _adCounter > 2) {
        _isAdButtonDisabled = true;
        timer =
            Timer.periodic(Duration(seconds: 900), (Timer t) => enableAds());
      }
      print(_adCounter);
    });
  }

  void enablePolls() {
    print('timer is completed');
    _pollCounter = 0;
    _isPollButtonDisabled = false;
  }

  void _incrementPollCounter() async {
    setState(() {
      _pollCounter++;
      if (_pollCounter == 2 || _pollCounter > 2) {
        print('Pollfish is disabled - Limit reached');
        _isPollButtonDisabled = true;
        timer =
            Timer.periodic(Duration(seconds: 900), (Timer t) => enablePolls());
      }
      print(_pollCounter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.mainScreenAnimationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: widget.mainScreenAnimation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - widget.mainScreenAnimation.value), 0.0),
            child: Container(
              height: 216,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 0, right: 16, left: 16),
                itemCount: rewardsData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var count = rewardsData.length > 10 ? 10 : rewardsData.length;
                  var animation = Tween(begin: 0.0, end: 1.0).animate(
                      CurvedAnimation(
                          parent: animationController,
                          curve: Interval((1 / count) * index, 1.0,
                              curve: Curves.fastOutSlowIn)));
                  animationController.forward();
                  return GestureDetector(
                    child: Rewards(
                      rewardsData: rewardsData[index],
                      animation: animation,
                      animationController: animationController,
                    ),
                    onTap: () {
                      if (index == 0) {
                        if (_isAdButtonDisabled == true) {
                          print('Ads Disabled');
                          return null;
                        } else {
                          RewardedVideoAd.instance.load(
                              adUnitId: RewardedVideoAd.testAdUnitId,
                              targetingInfo: targetingInfo);
                          RewardedVideoAd.instance.show();
                        }
                      } else if (index == 1) {
                        if (_isPollButtonDisabled == true) {
                          print('Polls Disabled');
                          return null;
                        } else {
                          FlutterPollfish.instance.show();
                        }
                      } else if (index == 2) {
                   
                      } else if (index == 3) {
                        Firestore.instance
                            .collection('users')
                            .document(id)
                            .updateData({'spin_tickets': spinTickets})
                            .then((data) async {})
                            .catchError((err) {});
                      } else if (index == 4) {
                      } else if (index == 5) {}
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class Rewards extends StatelessWidget {
  final RewardsData rewardsData;
  final AnimationController animationController;
  final Animation animation;

  const Rewards(
      {Key key, this.rewardsData, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                100 * (1.0 - animation.value), 0.0, 0.0),
            child: SizedBox(
              width: 130,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 32, left: 8, right: 8, bottom: 16),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: HexColor(rewardsData.endColor)
                                  .withOpacity(0.6),
                              offset: Offset(1.1, 4.0),
                              blurRadius: 5.0),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            HexColor(rewardsData.startColor),
                            HexColor(rewardsData.endColor),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(54.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 54, left: 16, right: 16, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              rewardsData.titleTxt,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: AppTheme2.fontName,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                color: AppTheme2.white,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      rewardsData.meals.join("\n"),
                                      style: TextStyle(
                                        fontFamily: AppTheme2.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                        letterSpacing: 0.2,
                                        color: AppTheme2.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            rewardsData.coins != 0
                                ? Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        rewardsData.coins.toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: AppTheme2.fontName,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 24,
                                          letterSpacing: 0.2,
                                          color: AppTheme2.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 4, bottom: 3),
                                        child: Text(
                                          'coins',
                                          style: TextStyle(
                                            fontFamily: AppTheme2.fontName,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 10,
                                            letterSpacing: 0.2,
                                            color: AppTheme2.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      color: AppTheme2.nearlyWhite,
                                      shape: BoxShape.circle,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: AppTheme2.nearlyBlack
                                                .withOpacity(0.4),
                                            offset: Offset(8.0, 8.0),
                                            blurRadius: 8.0),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Icon(
                                        Icons.add,
                                        color: HexColor(rewardsData.endColor),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 84,
                      height: 84,
                      decoration: BoxDecoration(
                        color: AppTheme2.nearlyWhite.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 8,
                    child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset(rewardsData.imagePath),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
