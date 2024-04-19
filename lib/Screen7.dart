import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kos_app/utils/constants.dart';
import 'package:kos_app/utils/showSnackBar.dart';

class ScreenSeven extends StatefulWidget {
  const ScreenSeven({super.key});

  @override
  State<ScreenSeven> createState() => _ScreenSevenState();
}

class _ScreenSevenState extends State<ScreenSeven> {
  final TextEditingController instituteController=TextEditingController();
  final TextEditingController eduLevelController=TextEditingController();
  final TextEditingController addYearController=TextEditingController();
  final TextEditingController passYearController=TextEditingController();
  final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  void dispose(){
    super.dispose();
    instituteController.dispose();
    eduLevelController.dispose();
    addYearController.dispose();
    passYearController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: Colors.yellow[600],
                          shape: const OvalBorder(),
                        ),
                        alignment: Alignment.center,
                        child:const Text(
                          '0',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        child: Image.asset('assets/arrow.png'),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: Colors.yellow[600],
                          shape: const OvalBorder(),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '50',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Container(
                        child: Image.asset('assets/arrow.png'),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: Colors.yellow[600],
                          shape: const OvalBorder(),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          '100',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Qualification Details',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Inter',
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Institute Name',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 350,
                        child: TextField(
                          textCapitalization: TextCapitalization.sentences,
                          controller: instituteController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                              filled: true,
                              fillColor: Colors.grey[700],
                              hintText: 'e.g.Mumbai University'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Education Level & Degree',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 350,
                        child: TextField(
                          textCapitalization: TextCapitalization.sentences,
                          controller: eduLevelController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                              filled: true,
                              fillColor: Colors.grey[700],
                              hintText: 'e.g.Graduation -B.Tech'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Admission Year',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 350,
                        child: TextField(
                          textCapitalization: TextCapitalization.sentences,
                          controller: addYearController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                              filled: true,
                              fillColor: Colors.grey[700],
                              hintText: 'e.g.2017'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Passout Year',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 350,
                        child: TextField(
                          textCapitalization: TextCapitalization.sentences,
                          controller: passYearController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                              filled: true,
                              fillColor: Colors.grey[700],
                              hintText: 'e.g.2021'),
                        ),
                      ),

                    ],
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
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          child: const Text('Back',style: TextStyle(color: Colors.black),),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () async {
                            try{
                              await FirebaseFirestore.instance.collection('Users').doc(currentUser.email!).update({
                                'Institute Name': instituteController.text,
                                'Education Level':eduLevelController.text,
                                'Admission Year': addYearController.text,
                                'Passout Year': passYearController.text,
                              });
                              Navigator.pushNamed(context, 'prof-profile');
                            }on FirebaseException catch (e){
                              showSnackBar(context, e.message!);
                            }
                          },
                          style: TextButton.styleFrom(
                              fixedSize: const Size(111, 28),
                              backgroundColor: buttonTheme,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          child: const Text('Save & Next',style: TextStyle(color: Colors.black),),
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
