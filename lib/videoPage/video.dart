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
    '_ey_1I1aJ5w',
    '7l9tDM4wU70',
    '872GTbs4-xQ',
    '7dye8SaSCmo',
    'MmMCx7pXvKg',
    '62cCf25n33g',
    'jMf4FsYNOpY',
    'FJgv1d6aTyw',
    'KYcG9g97HY8',
    'HcbQD2hCCaw',
    'h16bylgV2iM',
    'E_gYdhIFio4',
    'JX_6QaD2Mtg',
    'lHIl60RmFxs',
    'NlBl3tS0cX0',
    '2G3k2e6bHnM',
    '4-OJqhnbMXU',
    'EEzvoFpLmao',
    '7OgWtJ2wx8Q',
    'KBeeQKcqam8',
    '2G3k2e6bHnM',
    'MXY-NaK4IdU',
    'AA_jBPxNjp0',
    'dykTwTDkkNo',
    'w68cAfRJUs',
    'KhUmRUG5BCg',
    'kCoMHyKliLQ',
    'WqDDcwBuflg',
    'DGPXInyTcI0',
    'cd8loo4YYu4',
    'MXY-NaK4IdU',
    'AA_jBPxNjp0',
    'Hk3GMLrlCEo',
    'JX_6QaD2Mtg',
    '872GTbs4-xQ',
    '7dye8SaSCmo',
    'kCoMHyKliLQ',
    'xtgC88yFXeM',
    'JX_6QaD2Mtg',
    'E3VoV4c-nNI',
    '_kUrW9SEaJc',
    'isKeeLOqZqI',
    'Uz8A3GPCwvE',
    'cd8loo4YYu4',
    'MXY-NaK4IdU',
    '7dye8SaSCmo',
    'KYcG9g97HY8',
    'HcbQD2hCCaw',
    'yCh7GOOg1_s',
    'o9PY6NsB3_E',
    'TJaeGn8bIkc',
    'hsab-HJ7kqc',
    'RhrGvTQlbAY',
    'gfzvtF3aP4M',
    'xtgC88yFXeM',
    'kCoMHyKliLQ',
    'FDibR4a761k',
    'yBLq9Ud14aU',
    'e1DSHM1NKOw',
    'KOG4Msz5cpM',
    '7dye8SaSCmo',
    'DGPXInyTcI0',
    'HcbQD2hCCaw',
    'h16bylgV2iM',
    '2lAe1cqCOXo',
    'KapBdKumpsk',
    'sD0qb72wZlU',
    'LHcOOkSvmO8',
    'aLilIjxf87U',
    'ISbMc6eVF9M',
    'TJaeGn8bIkc',
    'hsab-HJ7kqc',
    'isKeeLOqZqI',
    '_kUrW9SEaJc',
    'JX_6QaD2Mtg',
    '872GTbs4-xQ',
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
