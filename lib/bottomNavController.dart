import 'package:flutter/material.dart';
import 'package:toffee/Pages/channel.dart';
import 'package:toffee/Pages/explore.dart';
import 'package:toffee/Pages/home.dart';
import 'package:toffee/Pages/tv.dart';
import 'package:toffee/Pages/upload.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({super.key});

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  List pages = [
    const HomeScreen(),
    const TVScreen(),
    const UploadScreen(),
    const ExploreScreen(),
    const ChannelScreen()
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Image.asset( "assets/logo/logo1.gif"),
        ),
        
        title: Text("Toffee",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 28),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              size: 30,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              size: 30,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
        flexibleSpace: const Image(
          image: AssetImage(
               "assets/poster/poster.jpg",),
          fit: BoxFit.fill,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF354866),
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(
            fontSize: 12, color: Colors.white, fontWeight: FontWeight.w400),
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF354866),
            icon: _currentIndex == 0
                ? Icon(Icons.home, size: 27)
                : Icon(
                    Icons.home_outlined,
                    size: 27,
                  ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF354866),
              icon: _currentIndex == 1
                  ? Icon(Icons.tv_rounded, size: 27)
                  : Icon(
                      Icons.live_tv_outlined,
                      size: 27,
                    ),
              label: "TV"),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF354866),
              icon: _currentIndex == 2
                  ? Icon(
                      Icons.add_circle,
                      size: 35,
                      color: Color(0xFF911DA0),
                    )
                  : Icon(
                      Icons.add_circle_outline,
                      size: 35,
                      color: Color(0xFF911DA0),
                    ),
              label: "Upload"),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF354866),
            icon: _currentIndex == 3
                ? Icon(Icons.explore, size: 27)
                : Icon(
                    Icons.explore_outlined,
                    size: 27,
                  ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF354866),
            icon: _currentIndex == 4
                ? Icon(Icons.account_box, size: 27)
                : Icon(
                    Icons.account_box_outlined,
                    size: 27,
                  ),
            label: "My Channel",
          ),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
