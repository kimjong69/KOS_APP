import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(height: 122),
              CircleAvatar(radius:60, foregroundImage: AssetImage('assets/Business1.png'),backgroundColor: Color(0xFFD9D9D9),),
              SizedBox(height: 50.59,),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'screen3');
                },
                style: TextButton.styleFrom(
                    fixedSize: Size(305, 47),
                    backgroundColor: Color(0xFFA26BE9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "I'm an Enterpreneur",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Spacer(),
              CircleAvatar(radius:60, foregroundImage: AssetImage('assets/business2.png'),backgroundColor: Color(0xFFD9D9D9),),
              SizedBox(height: 50.59,),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    fixedSize: Size(305, 47),
                    backgroundColor: Color(0xFFA26BE9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "I'm Professional",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            SizedBox(height: 122,)
            ],
          ),
        ],
      ),

    ));
  }
}
