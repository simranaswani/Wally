import 'package:flutter/material.dart';
import 'package:step_counter/step_counter.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'dart:io';

String bannerUnitID;
BannerAd _bannerAd;
BannerAd createBannerAd() {
  return BannerAd(
    adUnitId: bannerUnitID,
    size: AdSize.banner,
    listener: (MobileAdEvent event) {
      print("BannerAd event $event");
    },
  );
}

InterstitialAd _interstitialAd;
InterstitialAd createInterstitialAd() {
  return InterstitialAd(
    adUnitId: InterstitialAd.testAdUnitId,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event $event");
    },
  );
}

class PedometerScreen extends StatefulWidget {
  @override
  _PedometerScreenState createState() => _PedometerScreenState();
}

class _PedometerScreenState extends State<PedometerScreen> {
  String _results;
  double distance;
  double time;

  readSteps() async {
    String results = "";
    Future<int> stepCount = StepCounter.getStepsToday();
    stepCount.then((value) {
      results = value.toString();
      distance = (value * 0.762) / 1000;
      time = value * 0.01;
      setState(() {
        _results = results;
      });
    }).catchError((error) {
      results = 'Failed to read all values. $error';
    });
  }

  @override
  void initState() {
    if (Platform.isAndroid) {
      FirebaseAdMob.instance
          .initialize(appId: 'ca-app-pub-3048874278085089~2217559878');
      bannerUnitID = 'ca-app-pub-3048874278085089/2877208888';
    } else if (Platform.isIOS) {
      FirebaseAdMob.instance
          .initialize(appId: 'ca-app-pub-3048874278085089~1964949448');
      bannerUnitID = 'ca-app-pub-3048874278085089/9651867776';
    }
    readSteps();
    _bannerAd = createBannerAd();
    _interstitialAd = createInterstitialAd()..load();
    _bannerAd
      ..load()
      ..show(horizontalCenterOffset: 0, anchorOffset: 99);
    super.initState();
  }

  @override
  void dispose() {
    _interstitialAd?.dispose();
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 170, 25, 25),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.deepOrange.withAlpha(50),
                  ),
                  child: Image.asset(
                    'assets/img/shoe.png',
                    width: 60,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                Text(
                  '$_results',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 80,
                    fontFamily: 'Netflix',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      Text(
                        'Total Steps'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontFamily: 'Netflix',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'You\'ve walked for $time mins today',
                        style: TextStyle(
                          fontFamily: "Netflix",
                          color: Colors.deepOrange,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey[300],
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'DISTANCE',
                              style: TextStyle(
                                fontFamily: "Netflix",
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '$distance',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Netflix",
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' km',
                                    style: TextStyle(
                                      fontFamily: "Netflix",
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[],
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.deepOrange,
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        _interstitialAd?.show();
                      },
                      child: Text(
                        'Claim Reward!',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: "Netflix",
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          letterSpacing: 0.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
