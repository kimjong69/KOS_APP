import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kos_app/reusable_card.dart';
import 'package:kos_app/utils/constants.dart';
import 'package:kos_app/utils/showSnackBar.dart';

enum Gender { male, female }

enum Position { HR, Founder }

class CompanyDetails extends StatefulWidget {
  const CompanyDetails({super.key});

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  Gender? selectedGender;
  Position? selectedPosition;
  final TextEditingController companyNameController = TextEditingController();
  final TextEditingController companyDomainController = TextEditingController();
  final TextEditingController companyEmailController = TextEditingController();
  final TextEditingController establishYearController = TextEditingController();
  final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  void dispose() {
    super.dispose();
    companyNameController.dispose();
    companyDomainController.dispose();
    companyEmailController.dispose();
    establishYearController.dispose();
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
                                  selectedPosition = Position.HR;
                                });
                              },
                              cardChild:const Text(
                                'HR',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              colour:
                              selectedPosition == Position.HR
                                  ? buttonTheme
                                  : Colors.grey,
                            ),
                            ReusableCard(
                              onPress: () {
                                setState(() {
                                  selectedPosition = Position.Founder;
                                });
                              },
                              cardChild: const Text(
                                'Founder',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              colour: selectedPosition == Position.Founder
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
                      'Company Name',
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
                        controller: companyNameController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g. RK Groups of Industries'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Company Domain',
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
                        controller: companyDomainController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g. Logistic'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Company Email',
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
                        controller: companyEmailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g.hr@rkgroup.com'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Company Established Year',
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
                        controller: establishYearController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g.1999'),
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
                                'Position': selectedPosition.toString().split('.')[1],
                                'Company Name': companyNameController.text,
                                'Company Domain': companyDomainController.text,
                                'Company Email': companyEmailController.text,
                                'Company Established Year': establishYearController.text,
                              },
                            );
                            Navigator.pushNamed(context, 'repre-details');

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
