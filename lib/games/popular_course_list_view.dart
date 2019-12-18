import 'package:MoneyLotto/games/category.dart';
import 'package:MoneyLotto/games/design_course_app_theme.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo26.dart' as prefix0;
import 'package:MoneyLotto/games/gameInfo/gameInfo80.dart' as prefix1;
import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'dart:convert';
import 'package:MoneyLotto/games/gameInfo/gameInfo1.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo2.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo3.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo4.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo5.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo6.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo7.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo8.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo9.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo10.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo11.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo12.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo13.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo14.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo15.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo16.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo17.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo18.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo19.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo20.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo21.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo22.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo23.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo24.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo25.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo26.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo27.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo28.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo29.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo30.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo31.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo32.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo33.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo34.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo35.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo36.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo37.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo38.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo39.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo40.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo42.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo41.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo43.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo44.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo45.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo46.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo47.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo48.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo49.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo50.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo51.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo52.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo53.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo54.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo55.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo56.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo57.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo58.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo59.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo60.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo61.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo62.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo63.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo64.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo65.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo66.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo67.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo68.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo69.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo70.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo72.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo71.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo73.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo74.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo75.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo76.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo77.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo78.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo79.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo80.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo81.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo82.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo83.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo84.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo85.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo86.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo87.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo88.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo89.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo90.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo91.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo92.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo93.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo94.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo95.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo96.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo97.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo98.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo99.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo100.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo101.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo102.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo103.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo104.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo105.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo106.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo107.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo108.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo109.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo110.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo111.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo112.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo113.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo114.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo115.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo116.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo117.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo118.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo119.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo120.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo121.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo122.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo123.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo124.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo125.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo126.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo127.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo128.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo129.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo130.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo131.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo132.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo133.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo134.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo135.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo136.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo137.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo138.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo139.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo140.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo142.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo141.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo143.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo144.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo145.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo146.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo147.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo148.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo149.dart';
import 'package:MoneyLotto/games/gameInfo/gameInfo150.dart';

class PopularCourseListView extends StatefulWidget {
  const PopularCourseListView({Key key, this.callBack}) : super(key: key);

  final Function callBack;
  @override
  _PopularCourseListViewState createState() => _PopularCourseListViewState();
}

class _PopularCourseListViewState extends State<PopularCourseListView>
    with TickerProviderStateMixin {
  AnimationController animationController;
  List data;
  InterstitialAd _interstitialAd;
  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event $event");
      },
    );
  }

  @override
  void initState() {
    _interstitialAd = createInterstitialAd()..load();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  void dispose() {
    _interstitialAd?.dispose();
    super.dispose();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget JsonGame(BuildContext context) {
    return Container(
        child: Center(
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context).loadString('data.json'),
                builder: (context, snapshot) {
                  var myData = json.decode(snapshot.data.toString());
                })));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: FutureBuilder<bool>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          } else {
            return GridView(
              padding: const EdgeInsets.all(8),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: List<Widget>.generate(
                Category.popularCourseList.length,
                (int index) {
                  final int count = Category.popularCourseList.length;
                  final Animation<double> animation =
                      Tween<double>(begin: 0.0, end: 1.0).animate(
                    CurvedAnimation(
                      parent: animationController,
                      curve: Interval((1 / count) * index, 1.0,
                          curve: Curves.fastOutSlowIn),
                    ),
                  );
                  animationController.forward();
                  return CategoryView(
                    callback: () {
                      _interstitialAd = createInterstitialAd()..load();
                      _interstitialAd?.show();
                      if (index == 0) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen()));
                        _interstitialAd?.dispose();
                      } else if (index == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen2()));
                        _interstitialAd?.dispose();
                      } else if (index == 2) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen3()));
                        _interstitialAd?.dispose();
                      } else if (index == 3) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen4()));
                        _interstitialAd?.dispose();
                      } else if (index == 4) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen5()));
                        _interstitialAd?.dispose();
                      } else if (index == 5) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen6()));
                        _interstitialAd?.dispose();
                      } else if (index == 6) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen7()));
                        _interstitialAd?.dispose();
                      } else if (index == 7) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen8()));
                        _interstitialAd?.dispose();
                      } else if (index == 8) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen9()));
                        _interstitialAd?.dispose();
                      } else if (index == 9) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen10()));
                        _interstitialAd?.dispose();
                      } else if (index == 10) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen11()));
                        _interstitialAd?.dispose();
                      } else if (index == 11) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen12()));
                        _interstitialAd?.dispose();
                      } else if (index == 12) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen13()));
                        _interstitialAd?.dispose();
                      } else if (index == 13) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen14()));
                        _interstitialAd?.dispose();
                      } else if (index == 14) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen15()));
                        _interstitialAd?.dispose();
                      } else if (index == 15) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen16()));
                        _interstitialAd?.dispose();
                      } else if (index == 16) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen17()));
                        _interstitialAd?.dispose();
                      } else if (index == 17) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen18()));
                        _interstitialAd?.dispose();
                      } else if (index == 18) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen19()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 19) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen20()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 20) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen21()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 21) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen22()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 22) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen23()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 23) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen24()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 24) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen25()));
                        _interstitialAd?.dispose();
                      }

                      else if (index == 25) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen26()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 26) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen27()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 27) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen28()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 28) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen29()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 29) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen30()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 30) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen31()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 31) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen32()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 32) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen33()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 33) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen34()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 34) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen35()));
                        _interstitialAd?.dispose();
                      }

                      else if (index == 35) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen36()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 36) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen37()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 37) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen38()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 38) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen39()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 39) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen40()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 40) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen41()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 41) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen42()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 42) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen43()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 43) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen44()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 44) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen45()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 45) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen46()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 46) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen47()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 47) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen48()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 48) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen49()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 49) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen50()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 50) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen51()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 51) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen52()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 52) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen53()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 53) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen54()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 54) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen55()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 55) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen56()));
                        _interstitialAd?.dispose();
                      }


                        else if (index == 56) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen57()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 57) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen58()));
                        _interstitialAd?.dispose();
                      }  else if (index == 58) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen59()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 59) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen60()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 60) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen61()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 61) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen62()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 62) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen63()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 63) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen64()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 64) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen65()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 65) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen66()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 66) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen67()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 67) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen68()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 68) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen69()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 69) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen70()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 70) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen71()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 71) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen72()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 72) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen73()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 73) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen74()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 74) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen75()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 75) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen76()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 76) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen77()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 77) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen78()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 78) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen79()));
                        _interstitialAd?.dispose();
                      }  else if (index == 79) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen80()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 80) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen81()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 81) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen82()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 82) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen83()));
                        _interstitialAd?.dispose();
                      }  else if (index == 83) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen84()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 84) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen85()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 85) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen86()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 86) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen87()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 87) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen88()));
                        _interstitialAd?.dispose();
                      } else if (index == 88) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen89()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 89) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen90()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 90) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen91()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 91) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen92()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 92) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen93()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 93) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen94()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 94) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen95()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 95) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen96()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 96) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen97()));
                        _interstitialAd?.dispose();
                      }

                       else if (index == 97) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen98()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 98) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen99()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 99) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen100()));
                        _interstitialAd?.dispose();
                      }
                       else if (index == 100) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen101()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 101) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen102()));
                        _interstitialAd?.dispose();
                      } else if (index == 102) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen103()));
                        _interstitialAd?.dispose();
                      } else if (index == 103) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen104()));
                        _interstitialAd?.dispose();
                      } else if (index == 104) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen105()));
                        _interstitialAd?.dispose();
                      } else if (index == 105) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen106()));
                        _interstitialAd?.dispose();
                      } else if (index == 106) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen107()));
                        _interstitialAd?.dispose();
                      } else if (index == 107) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen108()));
                        _interstitialAd?.dispose();
                      } else if (index == 108) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen109()));
                        _interstitialAd?.dispose();
                      } else if (index == 109) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen110()));
                        _interstitialAd?.dispose();
                      } else if (index == 110) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen111()));
                        _interstitialAd?.dispose();
                      } else if (index == 111) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen112()));
                        _interstitialAd?.dispose();
                      } else if (index == 112) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen113()));
                        _interstitialAd?.dispose();
                      } else if (index == 113) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen114()));
                        _interstitialAd?.dispose();
                      } else if (index == 114) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen115()));
                        _interstitialAd?.dispose();
                      } else if (index == 115) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen116()));
                        _interstitialAd?.dispose();
                      } else if (index == 116) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen117()));
                        _interstitialAd?.dispose();
                      } else if (index == 117) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen118()));
                        _interstitialAd?.dispose();
                      } else if (index == 118) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen119()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 119) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen120()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 120) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen121()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 121) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen122()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 122) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen123()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 123) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen124()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 124) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen125()));
                        _interstitialAd?.dispose();
                      }

                      else if (index == 125) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen126()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 126) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen127()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 127) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen128()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 128) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen129()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 129) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen130()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 130) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen131()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 131) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen132()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 132) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen133()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 133) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen134()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 134) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen135()));
                        _interstitialAd?.dispose();
                      }

                      else if (index == 135) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen136()));
                        _interstitialAd?.dispose();
                      }
                      else if (index == 136) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen137()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 137) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen138()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 138) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen139()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 139) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen140()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 140) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen141()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 141) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen142()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 142) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen43()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 143) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen144()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 144) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen145()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 145) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen146()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 146) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen147()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 147) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen148()));
                        _interstitialAd?.dispose();
                      }

                        else if (index == 148) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen149()));
                        _interstitialAd?.dispose();
                      }
                        else if (index == 149) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CourseInfoScreen150()));
                        _interstitialAd?.dispose();
                      }

                    },
                    category: Category.popularCourseList[index],
                    animation: animation,
                    animationController: animationController,
                  );
                },
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 32.0,
                crossAxisSpacing: 32.0,
                childAspectRatio: 0.8,
              ),
            );
          }
        },
      ),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView(
      {Key key,
      this.category,
      this.animationController,
      this.animation,
      this.callback})
      : super(key: key);

  final VoidCallback callback;
  final Category category;
  final AnimationController animationController;
  final Animation<dynamic> animation;

  Widget JsonGame(BuildContext context) {
    return Container(
        child: Center(
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context).loadString('data.json'),
                builder: (context, snapshot) {
                  var myData = json.decode(snapshot.data.toString());
                })));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: Transform(
              transform: Matrix4.translationValues(
                  0.0, 50 * (1.0 - animation.value), 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  callback();
                },
                child: SizedBox(
                  height: 280,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      Container(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: HexColor('#F8FAFB'),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(16.0)),
                                    // border: new Border.all(
                                    //     color: DesignCourseAppTheme.notWhite),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 16,
                                                    left: 16,
                                                    right: 16),
                                                child: Text(
                                                  category.title,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: "Netflix",
                                                    fontSize: 16,
                                                    letterSpacing: 0.27,
                                                    color: DesignCourseAppTheme
                                                        .darkerText,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8,
                                                    left: 16,
                                                    right: 16,
                                                    bottom: 8),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 48,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 48,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 24, right: 16, left: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: DesignCourseAppTheme.grey
                                        .withOpacity(0.2),
                                    offset: const Offset(0.0, 0.0),
                                    blurRadius: 6.0),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16.0)),
                              child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.asset(category.imagePath)),
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
        },
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
