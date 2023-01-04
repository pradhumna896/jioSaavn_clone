import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jiosavan_clone/page/nav_bar/mylibrary_page.dart';
import 'package:jiosavan_clone/page/nav_bar/search_page.dart';
import 'package:jiosavan_clone/page/nav_bar/videos_page.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List pages = [
    const HomePage(),
    const SearchPage(),
    const VideoPage(),
    const LibraryPage()
  ];
  void onTap(index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.black54,
        items: [
        BottomNavigationBarItem(label:"Home",icon: SvgPicture.asset("assets/svg/home.svg",height:20,width:20,color:Colors.black87,)),
        BottomNavigationBarItem(label:"Search",icon: SvgPicture.asset("assets/svg/search.svg",height:20,width:20)),
        BottomNavigationBarItem(label:"Videos",icon: SvgPicture.asset("assets/svg/video.svg",height:20,width:20)),
        BottomNavigationBarItem(label:"MyLibrary",icon: SvgPicture.asset("assets/svg/person.svg",height:20,width:20))
      ]),
    );
  }
}
