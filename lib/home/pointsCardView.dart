import 'package:MoneyLotto/home/homeScreen.dart';
import 'package:MoneyLotto/misc/themes/appTheme2.dart';
import 'package:MoneyLotto/main.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class PointsCardView extends StatefulWidget {
  final AnimationController animationController;
  final Animation animation;
  const PointsCardView({Key key, this.animationController, this.animation})
      : super(key: key);

  @override
  PointsCardViewState createState() => PointsCardViewState();
}

String id = '';
HomeScreen currentUserId;

class PointsCardViewState extends State<PointsCardView>
    with TickerProviderStateMixin {
      
  fetchUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    id = prefs.getString('id') ?? '';
  }

  @override
  void initState() {
    fetchUserId();
    super.initState();
  }

  Widget coins(BuildContext context) {
    if(id != '') {
    return new StreamBuilder(
        stream: Firestore.instance.collection('users').document(id).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text(
              "Loading",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTheme2.fontName,
                fontWeight: FontWeight.bold,
                fontSize: 17,
                letterSpacing: 0.0,
                color: AppTheme2.white,
              ),
            );
          }
          var userDocument = snapshot.data;
          return Text(
            userDocument["coins"].toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppTheme2.fontName,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              letterSpacing: 0.0,
              color: AppTheme2.white,
            ),
          );
        });
    }
    else if(id == '') {
           return Text(
              "Loading",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTheme2.fontName,
                fontWeight: FontWeight.bold,
                fontSize: 17,
                letterSpacing: 0.0,
                color: AppTheme2.white,
              ),
            );
    }
  }

  Widget lifetimecoins(BuildContext context) {
    if(id != '') {
    return new StreamBuilder(
        stream: Firestore.instance.collection('users').document(id).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text(
              'Loading',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTheme2.fontName,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 0.0,
                color: AppTheme2.white,
              ),
            );
          }
          var userDocument = snapshot.data;
          return Text(
            userDocument["lifetime_coins"].toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppTheme2.fontName,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppTheme2.white,
            ),
          );
        });
    }
    else if(id == '') {
         return Text(
              'Loading',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTheme2.fontName,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 0.0,
                color: AppTheme2.white,
              ),
            );
    }
    
  }

  Widget coinsearnedtoday(BuildContext context) {
    if(id != '') {
    return new StreamBuilder(
        stream: Firestore.instance.collection('users').document(id).snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text(
              'Loading',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTheme2.fontName,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                letterSpacing: 0.0,
                color: AppTheme2.white,
              ),
            );
          }
          var userDocument = snapshot.data;
          return Text(
            userDocument["coins_earned_today"].toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: AppTheme2.fontName,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: AppTheme2.white,
            ),
          );
        });
    }
    else if(id == '') {
        return Text(
              'Loading',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AppTheme2.fontName,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                letterSpacing: 0.0,
                color: AppTheme2.white,
              ),
            );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.animationController,
      builder: (BuildContext context, Widget child) {
        return FadeTransition(
          opacity: widget.animation,
          child: new Transform(
            transform: new Matrix4.translationValues(
                0.0, 30 * (1.0 - widget.animation.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 18),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      HexColor('#FF8C3B'),
                      HexColor('#FE524B'),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(68.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: AppTheme2.grey.withOpacity(0.4),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 5.0),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 4),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 58,
                                        width: 2,
                                        decoration: BoxDecoration(
                                          color: HexColor('#FFFFFF')
                                              .withOpacity(0.6),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4, bottom: 2),
                                              child: Text(
                                                'Coins earned today',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      AppTheme2.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15.9,
                                                  letterSpacing: -0.1,
                                                  color: AppTheme2.white
                                                      .withOpacity(1),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 28,
                                                  height: 28,
                                                  child: Image.asset(
                                                      "assets/fitness_app/eaten.png"),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: lifetimecoins(context),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: Text(
                                                    'coins',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          AppTheme2.fontName,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12,
                                                      letterSpacing: -0.2,
                                                      color: AppTheme2.white
                                                          .withOpacity(1),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 48,
                                        width: 2,
                                        decoration: BoxDecoration(
                                          color: HexColor('#FFFFFF')
                                              .withOpacity(0.6),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.0)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4, bottom: 2),
                                              child: Text(
                                                'Lifetime coins',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      AppTheme2.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15.9,
                                                  letterSpacing: -0.1,
                                                  color: AppTheme2.white
                                                      .withOpacity(1),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: <Widget>[
                                                SizedBox(
                                                  width: 28,
                                                  height: 28,
                                                  child: Image.asset(
                                                      "assets/fitness_app/burned.png"),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 4, bottom: 3),
                                                  child: lifetimecoins(context),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8, bottom: 3),
                                                  child: Text(
                                                    'coins',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontFamily:
                                                          AppTheme2.fontName,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 12,
                                                      letterSpacing: -0.2,
                                                      color: AppTheme2.white
                                                          .withOpacity(1),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Center(
                              child: Stack(
                                overflow: Overflow.visible,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            HexColor('#00FFFFFF'),
                                            HexColor('#00FFFFFF'),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(100.0),
                                        ),
                                        border: new Border.all(
                                            width: 4,
                                            color: AppTheme2.white
                                                .withOpacity(0.6)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          coins(context),
                                          Text(
                                            'coins',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: AppTheme2.fontName,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12,
                                              letterSpacing: 0.0,
                                              color: AppTheme2.white
                                                  .withOpacity(1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: CustomPaint(
                                      child: SizedBox(
                                        width: 108,
                                        height: 108,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 8, bottom: 8),
                      child: Container(
                        height: 2,
                        decoration: BoxDecoration(
                          color: AppTheme2.background,
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 24, right: 24, top: 8, bottom: 16),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
