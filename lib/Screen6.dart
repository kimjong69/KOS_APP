import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kos_app/reusable_card.dart';
import 'package:kos_app/utils/constants.dart';
import 'package:kos_app/utils/showSnackBar.dart';

enum Gender { male, female }

enum Experience { experienced, fresher }

class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix> {
  Gender? selectedGender;
  Experience? selectedExperience;
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  void dispose(){
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    phoneController.dispose();
    dobController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const ShapeDecoration(
                          color: Colors.black,
                          shape: OvalBorder(),
                        ),
                        alignment: Alignment.center,
                        child: Image.asset('assets/camera.png'),
                      ),
                      const Text(
                        'Upload',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                  indent: 20,
                  endIndent: 20,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'My Gender',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        Row(
                          children: [
                            ReusableCard(
                              onPress: () {
                                setState(() {
                                  selectedGender = Gender.male;
                                });
                              },
                              cardChild: const Text(
                                'Male',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              colour: selectedGender == Gender.male
                                  ? buttonTheme
                                  : Colors.grey,
                            ),
                            ReusableCard(
                              onPress: () {
                                setState(() {
                                  selectedGender = Gender.female;
                                });
                              },
                              cardChild: const Text(
                                'Female',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              colour: selectedGender == Gender.female
                                  ? buttonTheme
                                  : Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'I Am           ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        Row(
                          children: [
                            ReusableCard(
                              onPress: () {
                                setState(() {
                                  selectedExperience = Experience.experienced;
                                });
                              },
                              cardChild: const Text(
                                'Experienced',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              colour:
                                  selectedExperience == Experience.experienced
                                      ? buttonTheme
                                      : Colors.grey,
                            ),
                            ReusableCard(
                              onPress: () {
                                setState(() {
                                  selectedExperience = Experience.fresher;
                                });
                              },
                              cardChild: const Text(
                                'Fresher',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              colour: selectedExperience == Experience.fresher
                                  ? buttonTheme
                                  : Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                  indent: 20,
                  endIndent: 20,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'First Name',
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
                        controller: firstNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g.Raj'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Last Name',
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
                        controller: lastNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g.Sharma'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Phone Number',
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
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g. +91 1234567890'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Date of Birth',
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
                        controller: dobController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g.28 May 1999'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
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
                                .doc(currentUser.email!)
                                .update(
                              {
                                'Gender': selectedGender.toString().split('.')[1],
                                'Experience': selectedExperience.toString().split('.')[1],
                                'First Name': firstNameController.text,
                                'Last Name': lastNameController.text,
                                'Phone Number': phoneController.text,
                                'DOB': dobController.text,
                              },
                            );
                            Navigator.pushNamed(context, 'edu-details');
                          } on FirebaseException catch (e) {
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
