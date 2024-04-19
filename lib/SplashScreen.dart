import 'package:flutter/material.dart';
import 'package:kos_app/utils/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Container(
                  child: Image.asset("assets/kos.png"),
                ),
                const SizedBox(
                  height: 150,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'splash2');
                  },
                  style: TextButton.styleFrom(
                      fixedSize: const Size(266, 47),
                      backgroundColor: buttonTheme,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}