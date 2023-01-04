import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jiosavan_clone/color/colors.dart';
import 'package:jiosavan_clone/component/logo_widget.dart';
import 'package:jiosavan_clone/utils/custom_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColor.gunMatel.withOpacity(0.8)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CustomText(
                          title: "Skip",
                          size: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontFamily: "Lato-Italic"),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              SvgPicture.asset(
                "assets/svg/JioSaavn_Logo.svg",
                height: 45,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomText(
                  title: "Login and enjoy more than 80 million songs",
                  size: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: 'Lato-Black'),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: AppColor.mainColor,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: SvgPicture.asset(
                            "assets/svg/jio-logo.svg",
                            height: 25,
                            width: 25,
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      const CustomText(
                          title: "Log in with Jio",
                          size: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontFamily: 'Lato')
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CustomText(
                        title: "Use another mobile number ",
                        color: Colors.black,
                        fontFamily: "Lato-Regular",
                        fontWeight: FontWeight.w400,
                        size: 18,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 18,
                      )
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                      child: Container(
                    height: 1.0,
                    margin: const EdgeInsets.only(bottom: 5),
                    color: Colors.black54,
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  const CustomText(
                      title: "Or",
                      size: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                      fontFamily: "Lato"),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(bottom: 5),    
                    height: 1.0,
                    color: Colors.black54,
                  ))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  LogoWidget(svg: "assets/svg/google.svg", color: Colors.red),
                  SizedBox(
                    width: 40,
                  ),
                  LogoWidget(
                      svg: "assets/svg/facebook.svg",
                      color: AppColor.facebookColor),
                  SizedBox(
                    width: 40,
                  ),
                  LogoWidget(
                      svg: "assets/svg/gmail-logo.svg", color: Colors.black),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomText(
                      title: "By continuing, you agree to our",
                      size: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                      fontFamily: 'Lato'),
                  CustomText(
                    title: "Terms ",
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontFamily: 'Lato',
                    textDecoration: TextDecoration.underline,
                  ),
                  CustomText(
                    title: "&",
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontFamily: 'Lato',
                  ),
                  CustomText(
                    title: " Privacy Policy",
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontFamily: 'Lato',
                    textDecoration: TextDecoration.underline,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
