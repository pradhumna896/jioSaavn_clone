import 'package:flutter/material.dart';
import '../utils/custom_text.dart';

class RecentlyPlayed extends StatelessWidget {
  final bool isCircle;
  final String title;

  const RecentlyPlayed({super.key, this.isCircle = false, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              title: title,
              size: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontFamily: "Lato"),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 3),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: isCircle
                              ?  BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                  color: Colors.white70
                                ),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/image/arjit.jpg"),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                )
                              : BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/image/download.jpg"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.red,
                                ),
                          child: Align(
                            alignment: isCircle
                                ? Alignment.center
                                : Alignment.bottomRight,
                            child: Container(
                              height: 30,
                              width: 30,
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black.withOpacity(0.2)),
                              child: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: 100,
                            child: const Center(
                              child: CustomText(
                                title: "Aarti Kunj vihari ki",
                                size: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: "Lato",
                                textAlign: TextAlign.center,
                              ),
                            ))
                      ],
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
