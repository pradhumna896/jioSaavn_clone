import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widget/recently_playrd.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            SvgPicture.asset("assets/svg/JioSaavn_Logo.svg"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const[
            SizedBox(height: 20,),
            RecentlyPlayed(title: "Recently Played",),
            SizedBox(height: 20,),
            RecentlyPlayed(isCircle: true,title: "Recommended Artist Radio",),
            SizedBox(height: 20,),
            RecentlyPlayed(title: "Recently Played",),
            ],
        ),
      ),
    );
  }
}
