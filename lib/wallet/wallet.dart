import 'package:MoneyLotto/functionality/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:MoneyLotto/misc/themes/appTheme2.dart';
import 'package:MoneyLotto/main.dart';

String url = "https://google.com";
final Color backgroundColor = Color(0xFFF2F3F8);

class WalletPage extends StatefulWidget {
  @override
  final AnimationController animationController;

  const WalletPage({Key key, this.animationController}) : super(key: key);
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;
  bool isCollapsed = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;
  @override
  void settings() {}
  @override
  Future<Null> handleSignOut() async {
    this.setState(() {
      isLoading = true;
    });

    await FirebaseAuth.instance.signOut();

    this.setState(() {
      isLoading = false;
    });

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginPage()),
        (Route<dynamic> route) => false);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation =
        Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Material(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(65),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[dashboard(context), menu(context)],
        ),
      ),
    );
  }

  Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth,
      right: isCollapsed ? 0 : -0.2 * screenWidth,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 8,
          color: backgroundColor,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            
            child: Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 48, bottom: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isCollapsed)
                          _controller.forward();
                        else
                          _controller.reverse();

                        isCollapsed = !isCollapsed;
                      });
                    },
                    child: Row(
                      children: <Widget>[
                        Card(
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.settings, color: Color(0xFFF2F3F8)),
                  Container(
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
                          topLeft: Radius.circular(16.0),
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topRight: Radius.circular(16.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: AppTheme2.grey.withOpacity(0.4),
                            offset: Offset(1.1, 1.1),
                            blurRadius: 10.0),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 16, left: 16, right: 16),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 8, top: 0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          InkWell(
                                            child: Icon(Icons.settings,
                                                color: Colors.white),
                                            onTap: () {
                                              setState(() {
                                                if (isCollapsed)
                                                  _controller.forward();
                                                else
                                                  _controller.reverse();

                                                isCollapsed = !isCollapsed;
                                              });
                                            },
                                          ),

                                          //Icon(Icons.settings, color: Color(0xFFF2F3F8)),
                                        ],
                                      ),
                                      Padding (
                                       padding: const EdgeInsets.only(left:24.0),
                                      ),
                                     Column(children: <Widget>[
                                        Container(
                                         // margin: const EdgeInsets.symmetric(
                                             // horizontal: 101),
                                          height:30,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                                    Padding(
                                             padding: const EdgeInsets.only(
                                                  left: 2),
                                              child: Text(
                                                'Coins earned today',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      AppTheme2.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  letterSpacing: -0.1,
                                                  color: AppTheme2.white
                                                      .withOpacity(1),
                                                ),
                                              ),
                                            ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      //
                                      Row(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[],
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
                                  // child: Stack(
                                  //   overflow: Overflow.visible,
                                  //   children: <Widget>[
                                  //     Padding(
                                  //       padding: const EdgeInsets.all(4.0),
                                  //       child: CustomPaint(
                                  //         child: SizedBox(
                                  //           width: 10,
                                  //           height: 8,
                                  //         ),
                                  //       ),
                                  //     )
                                  //   ],
                                  // ),
                                ),
                              )
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(
                        //       left: 24, right: 24, top: 8, bottom: 8),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(
                        //       left: 24, right: 24, top: 8, bottom: 16),
                        //               child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     mainAxisSize: MainAxisSize.max,

                        //     children: [
                        //       InkWell(
                        //           child: Icon(Icons.settings, color: Colors.black),
                        //           onTap: () {
                        //             setState(() {
                        //               if (isCollapsed)
                        //                 _controller.forward();
                        //               else
                        //                 _controller.reverse();

                        //               isCollapsed = !isCollapsed;
                        //             });
                        //           },
                        //       ),

                        //       //Icon(Icons.settings, color: Color(0xFFF2F3F8)),
                        //     ],
                        //   ),
                        // )
                      ],
                    ),
                  ),
                  Container(
                    height: 20,
                   
                 
                      // child: ListView.separated(
                      //     shrinkWrap: true,
                      //     itemBuilder: (context, index) {
                      //       return Card(
                      //         child: ListTile(
                      //           title: Text("1000"),
                      //           subtitle: Text("Dhanadhan coins"),
                      //           trailing: Text("Rs.10"),
                      //         ),
                      //       );
                      //     },
                      //     separatorBuilder: (context, index) {
                      //       return Divider(height: 2);
                      //     },
                      //     itemCount: 10),
                      
                   
                  ),
                  Text(
                    "  Transactions",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                 
              
                  
                   
                   
                      
                      ListView.separated(
                          shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Card(
                              shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0),
  ),
                              child: ListTile(
                               leading: Image.asset('thumb-(1)'),
                                title: Text("1000"),
                               
                                trailing: Text("Rs.10"),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 2);
                          },
                          itemCount: 10),
                    
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _slideAnimation,
      child: ScaleTransition(
        scale: _menuScaleAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Text("FAQ",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Text("Contact us",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Text("Invite a friend",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Text("Rate us",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {

                        },
                      ),
                    );
                  },
                  child: Text("Language preference",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    handleSignOut();
                  },
                  child: Text("Sign out",
                      style: TextStyle(color: Colors.black, fontSize: 22)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}