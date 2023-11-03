import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 183,
                ),
                Container(
                  width: 350,
                  height: 210,
                  child: Image.asset('assets/world.png'),
                ),
                Spacer(),
                const SizedBox(
                  width: 277,
                  height: 39,
                  child: Text(
                    'Connect.Learn.Grow.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 23,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 305,
                  height: 45,
                  child: Text(
                    'Discover mentorship, partnerships, and innovation with industry experts.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'screen2');
                  },
                  style: TextButton.styleFrom(
                      fixedSize: Size(305, 47),
                      backgroundColor: Color(0xFFA26BE9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height:18,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Already have an account?\nLog In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: 'Arial Rounded MT Bold'),
                  ),
                ),
                const SizedBox(
                  width: 36,
                  height: 39,
                  child: Text(
                    'OR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Arial Rounded MT Bold',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.black,
                  ),
                  label: Text(
                    'Continue with Google',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: TextButton.styleFrom(
                    fixedSize: Size(305, 47),
                    backgroundColor: Color(0xFFA26BE9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
