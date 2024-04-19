import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kos_app/utils/constants.dart';
import 'package:kos_app/utils/showSnackBar.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  final TextEditingController jobTypeController = TextEditingController();
  final TextEditingController domainController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  void dispose() {
    super.dispose();
    jobTypeController.dispose();
    domainController.dispose();
    cityController.dispose();
    salaryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Need Help?',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const Text(
                    'You are looking for?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Inter',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Job Type',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      controller: jobTypeController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                          filled: true,
                          fillColor: Colors.grey[700],
                          hintText: 'e.g.Full Time'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Domain or Expertise',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      controller: domainController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                          filled: true,
                          fillColor: Colors.grey[700],
                          hintText: 'e.g.IT-Mobile App-Flutter'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Preferred City',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      controller: cityController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                          filled: true,
                          fillColor: Colors.grey[700],
                          hintText: 'e.g.Mumbai'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Expected Salary',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      controller: salaryController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                          filled: true,
                          fillColor: Colors.grey[700],
                          hintText: 'e.g.4lpa-5lpa'),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 350,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: TextButton.styleFrom(
                              fixedSize: const Size(111, 28),
                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Text(
                            'Back',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () async {
                            try {
                              await FirebaseFirestore.instance
                                  .collection('Users')
                                  .doc(currentUser.email)
                                  .update({
                                'Job Type': jobTypeController.text,
                                'Domain and Expertise': domainController.text,
                                'Preferred City': cityController.text,
                                'Expected Salary': salaryController.text,
                              });
                              Navigator.pushNamed(context, 'personal-details');
                            } on FirebaseException catch(e) {
                              showSnackBar(context, e.message!);
                            }
                          },
                          style: TextButton.styleFrom(
                              fixedSize: const Size(111, 28),
                              backgroundColor: buttonTheme,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          child: const Text(
                            'Save & Next',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
