import 'package:MoneyLotto/wallet/wallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:firebase_admob/firebase_admob.dart';

InterstitialAd _interstitialAd;
InterstitialAd createInterstitialAd() {
  return InterstitialAd(
    adUnitId: InterstitialAd.testAdUnitId,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event $event");
    },
  );
}

/// Creates list of video players
class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final List<YoutubePlayerController> _controllers = [
 
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
          initialVideoId: videoId,
          flags: YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
      )
      .toList();

  @override
  void initState() {
    _interstitialAd = createInterstitialAd()..load();
    _controllers.shuffle();
    super.initState();
  }

  @override
  void dispose() {
    _interstitialAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _interstitialAd?.dispose();
              _interstitialAd = createInterstitialAd()..load();
            },
            child: YoutubePlayer(
              key: ObjectKey(_controllers[index]),
              controller: _controllers[index],
              actionsPadding: EdgeInsets.only(left: 16.0),
              bottomActions: [
                CurrentPosition(),
                SizedBox(width: 10.0),
                ProgressBar(isExpanded: true),
                SizedBox(width: 10.0),
                RemainingDuration(),
                FullScreenButton(),
              ],
              onReady: () {
                _interstitialAd?.show();
              },
            ),
          );
        },
        itemCount: _controllers.length,
        separatorBuilder: (context, _) => SizedBox(height: 25.0),
      ),
    );
  }
}
