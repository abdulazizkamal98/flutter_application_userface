import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 241, 230, 243),
        ),
        body: Stack(
          children: [
            Positioned(
              child: Text(
                "Dont have an Account ?",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
              top: 711,
              left: 55,
            ),
            Positioned(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/SingUp");
                  },
                  child: Text(
                    "SingUp",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                      color: const Color.fromARGB(255, 83, 2, 97),
                    ),
                  )),
              top: 700,
              left: 270,
            ),
            Positioned(
              child: Text(
                "LogIn",
                style: TextStyle(
                  fontFamily: "myfont",
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 106, 3, 124),
                ),
              ),
              top: 30,
              left: 170,
            ),
            Positioned(
              child: SvgPicture.asset("assets/icons/login.svg"),
              top: 90,
              left: 40,
            ),
            Positioned(
              child: Container(
                child: TextField(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "       ادخل اسم المستخدم",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 196, 239),
                  borderRadius: BorderRadius.circular(35),
                ),
                margin: EdgeInsets.only(left: 33),
              ),
              top: 430,
            ),
            Positioned(
              child: Container(
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "       ادخل كلمة المرور   ",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {}, icon: Icon(Icons.visibility)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 230, 196, 239),
                  borderRadius: BorderRadius.circular(35),
                ),
                margin: EdgeInsets.only(left: 33),
              ),
              top: 520,
            ),
            Positioned(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromARGB(255, 76, 1, 87)),
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
                      color: Color.fromARGB(255, 244, 243, 244),
                      fontWeight: FontWeight.w900),
                ),
              ),
              top: 600,
              left: 100,
            ),
          ],
        ),
      ),
    );
  }
}
