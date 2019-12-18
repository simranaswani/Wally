import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

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
class Ads extends StatefulWidget {
  @override
  _AdsState createState() => _AdsState();
}

class _AdsState extends State<Ads> {
 @override
  Widget build(BuildContext context) {
    return null;
  }
}

void initState() {
   FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);
    _bannerAd = createBannerAd()..load()..show(anchorOffset: 60.0, horizontalCenterOffset: 0.0, anchorType: AnchorType.bottom);
}

void dispose() {
  _bannerAd.dispose();
}