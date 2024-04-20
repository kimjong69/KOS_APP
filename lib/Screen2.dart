import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kos_app/utils/constants.dart';
import 'package:kos_app/utils/showSnackBar.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(height: 122),
              const CircleAvatar(radius:60, foregroundImage: AssetImage('assets/Business1.png'),backgroundColor: Color(0xFFD9D9D9),),
              const SizedBox(height: 50.59,),
              TextButton(
                onPressed: () async {
                  try {
                    await FirebaseFirestore.instance
                        .collection('Users')
                        .doc(currentUser.email!)
                        .update(
                      {
                        'Profession': 'Entrepreneur',
                      },
                    );

                  } on FirebaseException catch (e) {
                    showSnackBar(context, e.message!);
                  }
                  Navigator.pushNamed(context, 'hire-talent-screen');
                },
                style: TextButton.styleFrom(
                    fixedSize: const Size(305, 47),
                    backgroundColor: buttonTheme,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "I'm an Entrepreneur",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Spacer(),
              const CircleAvatar(radius:60, foregroundImage: AssetImage('assets/business2.png'),backgroundColor: Color(0xFFD9D9D9),),
              const SizedBox(height: 50.59,),
              TextButton(
                onPressed: () async {
                  try {
                    await FirebaseFirestore.instance
                        .collection('Users')
                        .doc(currentUser.email!)
                        .update(
                      {
                        'Profession': 'Professional',
                      },
                    );

                  } on FirebaseException catch (e) {
                    showSnackBar(context, e.message!);
                  }
                  Navigator.pushNamed(context, 'preference-screen');
                },
                style: TextButton.styleFrom(
                    fixedSize: const Size(305, 47),
                    backgroundColor: buttonTheme,
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
            const SizedBox(height: 122,)
            ],
          ),
        ],
      ),

    ));
  }
}
