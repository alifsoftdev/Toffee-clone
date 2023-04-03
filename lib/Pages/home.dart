import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:toffee/Pages/asset_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider(
                    items: Assets.benner
                        .map((item) => Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(item),
                                      fit: BoxFit.fill)),
                            ))
                        .toList(),
                    options: CarouselOptions(
                        height: 180,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 750),
                        viewportFraction: 1,
                        onPageChanged: (val, carouselPageChangedReason) {
                          setState(() {
                            _currentIndex = val;
                          });
                        })),
                Positioned(
                  bottom: 5,
                  right: 15,
                  child: DotsIndicator(
                    dotsCount: Assets.benner.length == 0 ? 1 : Assets.benner.length,
                    position: _currentIndex.toDouble(),
                  ),
                )
              ],
            ),
            Cetegorious(
              cetegorious: "Popular TV Channels",
              onPressed: () {},
            ),
            SizedBox(
              height: 80,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: Assets.logo.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CircleAvatar(
                    backgroundImage: AssetImage(
                        Assets.logo[index]),
                    backgroundColor: Colors.cyan[900],
                    radius: 45,
                  );
                },
              ),
            ),
            Cetegorious(
              cetegorious: "Categories",
              onPressed: () {},
            ),
            SizedBox(
              height: 150,
              width: double.maxFinite,
              child: GridView.builder(
                itemCount: Assets.benner.length,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8, top: 5),
                    child: Container(
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image:  DecorationImage(
                          image: AssetImage(
                            Assets.benner[index]
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            OnlyCetagorious(text: "TidBits"),
            SizedBox(
              width: double.maxFinite,
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Assets.benner.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      height: 90,
                      width: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(
                              Assets.benner[index],
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                  );
                },
              ),
            ),
            OnlyCetagorious(text: "Moments"),
            SizedBox(
              width: double.maxFinite,
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Assets.poster.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              Assets.poster[index],
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                  );
                },
              ),
            ),
            OnlyCetagorious(text: "Editor's Choice"),
            SizedBox(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            "assets/benner/benner6.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Mujib amar pita | Animation Film",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.cyan[900],
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("Toffee"),
                                    ],
                                  ),
                                  const Text(
                                    "142 4k Views . 17d",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Mujib amar pita | Animation Film",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.cyan[900],
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("Toffee"),
                                    ],
                                  ),
                                  Text(
                                    "142 4k Views . 17d",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Image.asset(
                               "assets/benner/benner5.jpeg",
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Image.asset(
                              "assets/benner/benner4.jpeg",
                              fit: BoxFit.cover,
                            )),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Mujib amar pita | Animation Film",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundColor: Colors.cyan[900],
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text("Toffee"),
                                    ],
                                  ),
                                  const Text(
                                    "142 4k Views . 17d",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Cetegorious(
              cetegorious: "Tranding Channels",
              onPressed: () {},
            ),
            SizedBox(
              width: double.maxFinite,
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Assets.poster.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      width: 90,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundColor: Colors.cyan[900],
                            backgroundImage: AssetImage(
                               Assets.poster[index]),
                          ),
                          Text("BDCric Time"),
                          TextButton(onPressed: () {}, child: Text("Subscribe"))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.0,
                top: 10,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feed",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.tune_outlined))
                ],
              ),
            ),
             Post(
                image:
                    "assets/benner/benner9.jpeg",
                name: "G-Series ",
                title: "Swpner Prithibi"),
            Post(
                image:
                    "assets/benner/benner1.jpeg",
                name: "Pavilion ",
                title: "Faad -The Trap"),
            Post(
                image:
                   "assets/benner/benner2.jpeg",
                name: "Laser Vision  ",
                title: "Ghor nai | Shohel Khan")
          ],
        ),
      ),
    );
  }
}

class Cetegorious extends StatelessWidget {
  final String cetegorious;
  final VoidCallback? onPressed;
  const Cetegorious({super.key, required this.cetegorious, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 10, right: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cetegorious,
            style: const TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text(
              "View >",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}

class OnlyCetagorious extends StatelessWidget {
  final String text;
  const OnlyCetagorious({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 10, bottom: 10),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class Post extends StatelessWidget {
  final String image;
  final String name;
  final String title;
  const Post(
      {super.key,
      required this.image,
      required this.name,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.cyan[900],
                  radius: 20,
                ),
                title: RichText(
                  text: TextSpan(
                      text: name,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.lightBlue.shade900,
                      ),
                      children: [
                        TextSpan(
                          text: title,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.black),
                        ),
                      ]),
                ),
                trailing: Icon(Icons.more_vert_outlined),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.comment_rounded)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.group_sharp)),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
