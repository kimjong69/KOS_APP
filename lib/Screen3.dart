import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 110,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  foregroundImage: AssetImage('assets/Business1.png'),
                  backgroundColor: Color(0xFFD9D9D9),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Sign-in/Sign-Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'you will log in after verification if you are not registered.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            // SizedBox(
            //   width: 312,
            //   height: 30,
            //   child: TextField(
            //     enableSuggestions: false,
            //     autocorrect: false,
            //     keyboardType: TextInputType.number,
            //     decoration: InputDecoration(
            //       hintText: 'Enter your mobile number',
            //       filled: true,
            //       fillColor: Colors.grey,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              // width: 350,
              child: IntlPhoneField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: 'Phone Number'),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'screen4');
              },
              style: TextButton.styleFrom(
                  fixedSize: Size(305, 47),
                  backgroundColor: Color(0xFFA26BE9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Send Code",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Spacer(),
            Text(
              'By continuing you agree to KOS\'s Terms & Conditions and Confirm that you have read KOS\'s privacy policy',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
