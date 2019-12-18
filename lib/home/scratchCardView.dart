import 'package:MoneyLotto/misc/themes/appTheme2.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class ScratchCardView extends StatefulWidget {
  final AnimationController animationController;
  final Animation animation;

  const ScratchCardView({Key key, this.animationController, this.animation})
      : super(key: key);

  @override
  _ScratchCardViewState createState() => _ScratchCardViewState();
}

class _ScratchCardViewState extends State<ScratchCardView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
                  color: AppTheme2.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: AppTheme2.grey.withOpacity(0.2),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 0, left: 0, right: 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius:
                                        new BorderRadius.circular(8.0),
                                    child: Container(
                                        child: Image.asset(
                                      'assets/app/sc_preview.jpg',
                                      height: 164.5,
                                      fit: BoxFit.fill,
                                    )),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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

@override
double _opacity = 0.0;

Future<void> scratchCardDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Redeem your scratch card',
            style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontFamily: "Netflix",
                fontSize: 18),
          ),
        ),
        content: StatefulBuilder(builder: (context, StateSetter setState) {
          return Scratcher(
            accuracy: ScratchAccuracy.low,
            threshold: 10,
            brushSize: 50,
            onThreshold: () {
              setState(() {
                _opacity = 1;
              });
            },
            imagePath: "assets/app/sc.png",
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 250),
              opacity: _opacity,
              child: Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,
                child: Text(
                  "200\c",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Netflix",
                      fontSize: 50,
                      color: Colors.deepOrange),
                ),
              ),
            ),
          );
        }),
      );
    },
  );
}
