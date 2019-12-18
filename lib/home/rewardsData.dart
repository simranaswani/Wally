import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  RewardsData createState() => RewardsData();
}

class RewardsData extends State<MainPage> {
  final String imagePath;
  final String titleTxt;
  final String startColor;
  final String endColor;
  final List<String> meals;
  final String coins;

  RewardsData({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = "",
    this.endColor = "",
    this.meals,
    this.coins = '',
  });

  @override
  Widget build(BuildContext context) {
    return Text('Rewards Data');
  }

  static List<RewardsData> tabIconsList = [
    RewardsData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Check-in Reward',
      coins: '20',
      meals: ["        x4 a day"],
      startColor: "#FF8C3B",
      endColor: "#FE524B",
    ),
    RewardsData(
      imagePath: 'assets/fitness_app/lunch.png',
      titleTxt: 'Poll Reward',
      coins: '300',
      meals: ["        x1 a day"],
      startColor: "#FF8C3B",
      endColor: "#FE524B",
    ),
    RewardsData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Complete Offerwalls',
      coins: '?',
      meals: [""],
      startColor: "#FF8C3B",
      endColor: "#FE524B",
    ),
    RewardsData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Play Games',
      coins: '?',
      meals: [""],
      startColor: "#FF8C3B",
      endColor: "#FE524B",
    ),
     RewardsData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Spin to Win',
      coins: '?',
      meals: [""],
      startColor: "#FF8C3B",
      endColor: "#FE524B",
    ),
     RewardsData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Scratch card',
      coins: '?',
      meals: [""],
      startColor: "#FF8C3B",
      endColor: "#FE524B",
    ),
    RewardsData(
      imagePath: 'assets/fitness_app/breakfast.png',
      titleTxt: 'Watch videos',
      coins: '?',
      meals: [""],
      startColor: "#FF8C3B",
      endColor: "#FE524B",
    ),
  ];
}
