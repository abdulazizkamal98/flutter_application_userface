import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              child: Image.asset("assets/images/main_top.png"),
              bottom: 650,
              right: 200,
            ),
            Positioned(
              child: Image.asset("assets/images/main_bottom.png"),
              bottom: 0,
              left: 0,
              top: 700,
              right: 300,
            ),
            Positioned(
              child: Text(
                "Welcome To Edu",
                style: TextStyle(
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w700,
                  fontSize: 27,
                  color: Color.fromARGB(255, 95, 2, 112),
                ),
              ),
              top: 60,
              left: 120,
            ),
            Positioned(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/SingUp");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 112, 3, 131)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(73, 10, 73, 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(width: 2))),
                ),
                child: Text(
                  "Sing Up",
                  style: TextStyle(
                      fontFamily: "myfont",
                      fontSize: 30,
                      color: Color.fromARGB(255, 252, 252, 252),
                      fontWeight: FontWeight.w800),
                ),
              ),
              top: 650,
              left: 100,
            ),
            Positioned(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/LogIn");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 246, 226, 249)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(80, 10, 80, 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(width: 2))),
                ),
                child: Text(
                  "LogIn",
                  style: TextStyle(
                      fontFamily: "myfont",
                      fontSize: 30,
                      color: Color.fromARGB(255, 70, 1, 81),
                      fontWeight: FontWeight.w900),
                ),
              ),
              top: 570,
              left: 105,
            ),
            Positioned(
              child: SvgPicture.asset("assets/icons/chat.svg"),
              top: 115,
              left: 20,
            ),
          ],
        ),
      ),
    );
  }
}
