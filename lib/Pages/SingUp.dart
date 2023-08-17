import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 244, 224, 247),
        ),
        body: Stack(children: [
          Positioned(
            child: Text(
              "SingUp",
              style: TextStyle(
                  fontFamily: "myfont",
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: const Color.fromARGB(255, 97, 2, 113)),
            ),
            left: 160,
            top: 10,
          ),
          Positioned(
            child: SvgPicture.asset("assets/icons/signup.svg", width: 250),
            top: 50,
            left: 80,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 194, 243),
                borderRadius: BorderRadius.circular(35),
              ),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "  :ادخل اسم المستخدم ",
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.purple,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
                cursorColor: Colors.black,
              ),
              width: 300,
              margin: EdgeInsets.only(left: 53),
            ),
            top: 350,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 229, 194, 235),
                  borderRadius: BorderRadius.circular(35)),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "     :ادخل البريدى الالكترونى ",
                    prefixIcon: Icon(Icons.email, color: Colors.purple),
                    prefixIconColor: Color.fromARGB(255, 232, 187, 240),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    )),
              ),
            ),
            width: 300,
            left: 55,
            top: 430,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 197, 240),
                borderRadius: BorderRadius.circular(35),
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "       :ادخل كلمة المرور   ",
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: Color.fromARGB(255, 185, 36, 211),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.purple,
                    )),
              ),
            ),
            width: 300,
            top: 510,
            left: 55,
          ),
          Positioned(
            child: Text(
              "Dont have an Account ?",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
            top: 610,
            left: 55,
          ),
          Positioned(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/LogIn");
                },
                child: Text(
                  "LogIn",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                    color: const Color.fromARGB(255, 83, 2, 97),
                  ),
                )),
            top: 600,
            left: 270,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Color.fromARGB(255, 71, 2, 71),
              child: SvgPicture.asset(
                "assets/icons/facebook.svg",
                color: Color.fromARGB(255, 251, 250, 251),
              ),
            ),
            top: 660,
            left: 50,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Color.fromARGB(255, 71, 2, 71),
              child: SvgPicture.asset(
                "assets/icons/twitter.svg",
                width: 40,
                color: Color.fromARGB(255, 251, 250, 251),
              ),
            ),
            top: 660,
            left: 160,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Color.fromARGB(255, 71, 2, 71),
              child: SvgPicture.asset(
                "assets/icons/google-plus.svg",
                width: 45,
                color: Color.fromARGB(255, 251, 250, 251),
              ),
            ),
            top: 660,
            left: 270,
          ),
        ]),
      ),
    );
  }
}
