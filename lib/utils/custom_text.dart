import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  final String title;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String fontFamily;
  final TextDecoration textDecoration;
  final TextAlign textAlign;

  const CustomText({
    super.key,
    this.textAlign = TextAlign.start,
    this.textDecoration = TextDecoration.none,
    required this.title,
    required this.size,
    required this.fontWeight,
    required this.color,
    required this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        decoration: textDecoration,
          fontSize: size,
          fontWeight: fontWeight,
          color: color,
          fontFamily: fontFamily),
     textAlign: textAlign,     
    );
  }
}
