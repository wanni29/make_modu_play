import 'package:flutter/material.dart';
import 'package:netflix_ui/constants.dart';
import 'package:netflix_ui/models/nav_item.dart';
import 'package:netflix_ui/screens/coming/coming_screen.dart';
import 'package:netflix_ui/screens/contents_list/contents_list_screen.dart';
import 'package:netflix_ui/screens/home/home_screen.dart';

class MainScreens extends StatefulWidget {
  static String routeName = "/main_screens";

  @override
  _MainScreensState createState() =>
      _MainScreensState(); // 데이터가 동적으로 바뀌니까, 바뀐 상태를 저장하는 변수
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;
  List pages = [
    HomeScreen(),
    ComingScreen(),
    ContentsListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white, // 알아서 색깔 바꿔주는거네
        unselectedItemColor: kDarkColor, // 마찬가지
        selectedFontSize: 12.0,
        onTap: (index) {
          // index는 어떻게 알수있는게 아니라 1차 개발자가 사용자에게 입력받는 값을 설정을 해둔건가 ?
          setState(() {
            _selectedIndex =
                index; // _selectedIndex 의 값이 index와 같다면이 아니라 _selectedIndex에다가 index의 값을 넣겠다 라는 의미!
          });
        },
        items: List.generate(
          navItems.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(navItems[index].icon),
            label: navItems[index].label,
          ),
        ),
      ),
    );
  }
}
