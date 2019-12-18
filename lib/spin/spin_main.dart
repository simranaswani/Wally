import 'dart:async';
import 'dart:math';
import 'package:MoneyLotto/spin/spinning_wheel.dart';
import 'package:MoneyLotto/spin/fancyButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MainSpin());
}

class MainSpin extends StatefulWidget {
  @override
  _MainSpinState createState() => _MainSpinState();
}

class _MainSpinState extends State<MainSpin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Roulette(),
    );
  }
}

Widget buildNavigationButton({String text, Function onPressedFn}) {
  return FlatButton(
    color: Color.fromRGBO(255, 255, 255, 0.3),
    textColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50.0),
    ),
    onPressed: onPressedFn,
    child: Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 18.0),
    ),
  );
}

class Basic extends StatefulWidget {
  @override
  _BasicState createState() => _BasicState();
}

class _BasicState extends State<Basic> {
  final StreamController _dividerController = StreamController<int>();


  void dispose() {
    _dividerController.close();
    super.dispose();
  }
MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: <String>[],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Column(
          children: <Widget>[
             Container(
                   
            child: Image.asset('assets/app/spinheader.png',width: 30,height: 20,fit:BoxFit.fill),),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
             
              children: [
                SpinningWheel(
                  Image.asset('assets/images/wheel-6-300.png'),
                  width: 310,
                  height: 310,
                  initialSpinAngle: _generateRandomAngle(),
                  spinResistance: 0.2,
                  dividers: 6,
                  onUpdate: _dividerController.add,
                  onEnd: _dividerController.add,
                ),
                StreamBuilder(
                  stream: _dividerController.stream,
                  builder: (context, snapshot) =>
                      snapshot.hasData ? BasicScore(snapshot.data) : Container(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  double _generateRandomAngle() => Random().nextDouble() * pi * 2;
}

class BasicScore extends StatelessWidget {
  final int selected;

  final Map<int, String> labels = {
    1: 'Purple',
    2: 'Magenta',
    3: 'Red',
    4: 'Dark Orange',
    5: 'Light Orange',
    6: 'Yellow',
  };

  BasicScore(this.selected);

  @override
  Widget build(BuildContext context) {
    return Text('${labels[selected]}',
        style: TextStyle(fontStyle: FontStyle.normal, fontFamily: "Netflix"));
  }
}

class Roulette extends StatefulWidget {
  @override
  _RouletteState createState() => _RouletteState();
}

class _RouletteState extends State<Roulette> {
  final StreamController _dividerController = StreamController<int>();

  final _wheelNotifier = StreamController<double>();

  BannerAd _bannerAd;

MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['flutterio', 'beautiful apps'],
  contentUrl: 'https://flutter.io',
  testDevices: <String>[], 
);

BannerAd createBannerAd() {
    return BannerAd(
      adUnitId: BannerAd.testAdUnitId,
      size: AdSize.banner,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("BannerAd event $event");
      },
    );
  }

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    createBannerAd()..load()..show(anchorOffset: 60.0, horizontalCenterOffset: 0.0, anchorType: AnchorType.bottom);
    RewardedVideoAd.instance.listener =
        (RewardedVideoAdEvent event, {String rewardType, int rewardAmount}) {
      print("RewardedVideoAd event $event");
      if (event == RewardedVideoAdEvent.rewarded) {
        setState(() {
          Timer(Duration(seconds: 2), () {
            spinIt();
          });
        });
      }
    };
    super.initState();
  }

  
  void dispose() {
    _bannerAd.dispose();
    _dividerController.close();
    _wheelNotifier.close();
    super.dispose();
    
  }

  void spinIt() {
    _wheelNotifier.sink.add(_generateRandomVelocity());
  }

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Scaffold(
         
      
        backgroundColor: Color(0xffFF8C3B),
        body: Center(

         
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               

                  Padding(
              padding: EdgeInsets.only(left:10,right:352,top:40),
              child: SizedBox(
                //width: AppBar().preferredSize.height,
             // height: AppBar().preferredSize.height,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius:
                        BorderRadius.circular(AppBar().preferredSize.height),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onTap: () {
                       _bannerAd.dispose();
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ),
              //        SizedBox(
                
              
              //   child: Material(
              //     color: Colors.transparent,
              //     child: InkWell(
              //       borderRadius:
              //           BorderRadius.circular(AppBar().preferredSize.height),
                    
              //         child: Container(
              //           padding: EdgeInsets.only(top:0),
              //           child: Icon(
              //             Icons.arrow_back_ios,
              //             color: Colors.black,
              //           ),
              //         ),
                    
              //       onTap: () {

              //         Navigator.of(context).pop(
                        
              //           );
              //       },
              //     ),
              //   ),
              // ),

                     Padding(
                       padding: const EdgeInsets.only(left:48.0,right:50,top:0),
                       child: Column(
                         children: <Widget>[

                           Image.asset('assets/app/spinheader.png',
                           alignment: Alignment.center, width: 200, height:150),
                         ],
                       ),
                     ),
                 
                 
                    SizedBox(height: 10),
               
              SpinningWheel(
                
                Image.asset('assets/app/roulette-8-300.png'),
                width: 300,
                height: 300,
                initialSpinAngle: _generateRandomAngle(),
                spinResistance: 0.6,
                canInteractWhileSpinning: false,
                dividers: 8,
                onUpdate: _dividerController.add,
                onEnd: _dividerController.add,
                secondaryImage: Image.asset('assets/app/roulette-center-300.png'),
                secondaryImageHeight: 110,
                secondaryImageWidth: 110,
                shouldStartOrStop: _wheelNotifier.stream,
              ),
              SizedBox(height: 20),
              StreamBuilder(
                stream: _dividerController.stream,
                builder: (context, snapshot) =>
                    snapshot.hasData ? RouletteScore(snapshot.data) : Container(),
              ),
              SizedBox(height: 20),
              FancyButton(
                child: Text(
                  "SPIN NOW!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: "Netflix",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                size: 65,
                color: Color(0xFFFE524B),
                onPressed: () {
                  RewardedVideoAd.instance.load(
                      adUnitId: RewardedVideoAd.testAdUnitId,
                      targetingInfo: targetingInfo);
                  RewardedVideoAd.instance.show();
                },
              ),
            ],
          ),
        ),
       
      ),
    );
  }

  double _generateRandomVelocity() => (Random().nextDouble() * 6000) + 2000;

  double _generateRandomAngle() => Random().nextDouble() * pi * 2;
}

class RouletteScore extends StatelessWidget {
  final int selected;

  final Map<int, String> labels = {
    1: '10000\c',
    2: '40\c',
    3: '20\c',
    4: '10\c',
    5: '60\c',
    6: '10\c',
    7: '20\c',
    8: '50\c',
  };

  RouletteScore(this.selected);

  @override
  Widget build(BuildContext context) {
    return Text('${labels[selected]}',
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24.0, fontFamily: "Netflix"));
  }
}