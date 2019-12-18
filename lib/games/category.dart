class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = '',
    this.money = 0,
    this.rating = 0.0,
  });

  String title;
  String lessonCount;
  int money;
  double rating;
  String imagePath;

  static List<Category> categoryList = <Category>[
    Category(
      imagePath: 'assets/app/pollfish.png',
      title: 'Check out our Website',
      lessonCount: 'Fill out surveys to earn Pollfish Points',
      money: 25,
      rating: 4.3,
    ),
    
  ];

  static List<Category> popularCourseList = <Category>[
    Category(
      imagePath: 'assets/app/bluewater.jpeg',
      title: 'Serene Waters',
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/app/lemo.jpeg',
      title: 'Tangy Bliss',
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/app/sunflower.jpeg',
      title: 'Sumflower Times',
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/app/park.jpeg',
      title: 'Park Play',
      money: 208,
      rating: 4.9,
    ),
     Category(
      imagePath: 'assets/app/butterfly.jpeg',
      title: 'Butterfly Beauty',
      money: 208,
      rating: 4.9,
    ),
     Category(
      imagePath: 'assets/app/tiger.jpeg',
      title: 'Jungle times',
      money: 208,
      rating: 4.9,
    ),
     Category(
      imagePath: 'assets/app/waterfall.jpeg',
      title: 'Waterfall',
      money: 208,
      rating: 4.9,
    ),
     
   

  ];
}