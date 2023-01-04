import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatelessWidget {
  final String svg;
  final Color color;
  const LogoWidget({super.key, required this.svg, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color, width:1),

      ),
      child: Center(child: SvgPicture.asset(svg,height: 25,width: 25,)),
    );
  }
}