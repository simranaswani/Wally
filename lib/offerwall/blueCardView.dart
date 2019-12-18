import 'package:MoneyLotto/main.dart';
import 'package:MoneyLotto/misc/themes/appTheme2.dart';
import 'package:flutter/material.dart';

class BlueCardView extends StatelessWidget {
  final AnimationController animationController;
  final Animation animation;

  const BlueCardView({Key key, this.animationController, this.animation})
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
                0.0, 30 * (1.0 - animation.value), 0.0),//change Interstitial spacing here
            child: Padding(

              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 18, bottom: 0),//change Interstitial spacing here

        
              child: Container(

                
                margin: const EdgeInsets.only(top: 1.0, left: 0),
                
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppTheme2.nearlyDarkBlue, HexColor("#6F56E8")],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  boxShadow: <BoxShadow>[
                    
                    BoxShadow(
                        color: AppTheme2.grey.withOpacity(0.6),
                        offset: Offset(1.1, 1.1),
                        blurRadius: 10.0),
                  ],
                ),

       
                child: Padding(
                  
                  padding: const EdgeInsets.all(16.0),
                  child: Stack(
                    children: <Widget>[
                    
                      Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            
                          ),
                          Container(
                            child: SizedBox(
                              
                              height: 120,
                            ),
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                               
                                
                               
                                Container(
                                  
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
                                 
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}