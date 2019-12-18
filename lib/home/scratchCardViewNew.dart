import 'package:flutter/material.dart';
import 'package:MoneyLotto/home/scratchCardView.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'dart:io';

BannerAd _bannerAd;
BannerAd createBannerAd() {
  return BannerAd(
    adUnitId: BannerAd.testAdUnitId,
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
      _interstitialAd?.dispose();
      _interstitialAd = createInterstitialAd()..load();
    },
  );
}

void main() {
  runApp(ScratchScreen());
}

class ScratchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      color: Colors.white,
      home: ScratchScreenPage(),
    );
  }
}

class ScratchScreenPage extends StatefulWidget {
  @override
  _ScratchScreenPageState createState() => _ScratchScreenPageState();
}

class _ScratchScreenPageState extends State<ScratchScreenPage> {
  @override
  void initState() {
    if (Platform.isAndroid) {
      FirebaseAdMob.instance
          .initialize(appId: 'ca-app-pub-3048874278085089~2217559878');
    } else if (Platform.isIOS) {
      FirebaseAdMob.instance
          .initialize(appId: 'ca-app-pub-3048874278085089~1964949448');
    }
    _bannerAd ??= createBannerAd();
    _bannerAd
      ..load()
      ..show(horizontalCenterOffset: 0, anchorType: AnchorType.top);
    super.initState();
  }

  @override
  void dispose() {
    _interstitialAd?.dispose();
    _interstitialAd = createInterstitialAd()..load();

    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Grid Demo'),
      ),
      body: GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,
        children: List<Widget>.generate(8, (index) {
          return ClipRRect(
            borderRadius: new BorderRadius.circular(8.0),
            child: GridTile(
              child: GestureDetector(
                onTap: () {
                  if (index == 0) {
                    scratchCardDialog(context);
                    _interstitialAd?.show();
                  } else if (index == 1) {
                    scratchCardDialog(context);
                    _interstitialAd?.show();
                  } else if (index == 2) {
                    scratchCardDialog(context);
                    _interstitialAd?.show();
                  } else if (index == 3) {
                    scratchCardDialog(context);
                    _interstitialAd?.show();
                  } else if (index == 4) {
                    scratchCardDialog(context);
                    _interstitialAd?.show();
                  } else if (index == 5) {
                    scratchCardDialog(context);
                    _interstitialAd?.show();
                  } else if (index == 6) {
                    scratchCardDialog(context);
                    _interstitialAd?.show();
                  } else if (index == 7) {
                    scratchCardDialog(context);
                    _interstitialAd?.show();
                  } else if (index == 8) {
                    scratchCardDialog(context);
                    _interstitialAd?.show();
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/app/sc.png'),
                      fit: BoxFit.fill,
                    ),
                    //border: Border.all(width: 5, color: Colors.white),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
