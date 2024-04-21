import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kos_app/services/firebase_auth_methods.dart';
import 'package:kos_app/utils/botton_navbar.dart';
import 'package:kos_app/utils/constants.dart';

class ScreenEight extends StatefulWidget {
  const ScreenEight({super.key});

  @override
  State<ScreenEight> createState() => _ScreenEightState();
}

class _ScreenEightState extends State<ScreenEight> {
  final currentUser = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: const BottomNavBar(),
            backgroundColor: Colors.white,
            body: StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('Users')
                  .doc(currentUser.email!)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final userData =
                      snapshot.data!.data() as Map<String, dynamic>;
                  return SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.05,
                          right: MediaQuery.of(context).size.width * 0.05),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.95,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              child: Card(
                                color: Colors.white70,
                                elevation: 10,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${userData["First Name"]} \n${userData["Last Name"]}',
                                                style: const TextStyle(
                                                    fontSize: 30,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              Text(
                                                '${userData["Profession"]}',
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: CupertinoColors
                                                        .systemGrey,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              )
                                            ],
                                          ),
                                          const Spacer(),
                                          const CircleAvatar(
                                            radius: 60,
                                            foregroundImage: AssetImage(
                                                'assets/Business1.png'),
                                            backgroundColor: Color(0xFFD9D9D9),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            child: Row(
                                              children: [
                                                TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                      fixedSize:
                                                          const Size(63, 18),
                                                      backgroundColor:
                                                          const Color(
                                                              0xFF3DBFF7),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20))),
                                                  child: const Text(
                                                    'Change Picture',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 9,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                TextButton(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                      fixedSize:
                                                          const Size(63, 18),
                                                      backgroundColor:
                                                          const Color(
                                                              0xFF3DBFF7),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20))),
                                                  child: const Text(
                                                    'Edit Profile',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 9,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                userData["Profession"] == "Professional"
                                    ? Navigator.pushNamed(context, 'job-view')
                                    : null;
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: Card(
                                  elevation: 10,
                                  color: Colors.white70,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 10, bottom: 10),
                                    child:
                                        userData["Profession"] == "Professional"
                                            ? const Text(
                                                'Jobs',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            : const Text(
                                                'Hiring Talent',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.25,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Card(
                                color: Colors.white70,
                                elevation: 10,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          'Saved Post',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        child: userData["Profession"] ==
                                                "Professional"
                                            ? const Text(
                                                'Upload Resume',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            : const Text(
                                                'Your Startup Idea',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          userData["Profession"] ==
                                                  "Professional"
                                              ? null
                                              : Navigator.pushNamed(
                                                  context, 'schemes-view');
                                        },
                                        child: userData["Profession"] ==
                                                "Professional"
                                            ? const Text(
                                                'Appointment Bookings',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            : const Text(
                                                'Government Schemes',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                      ),
                                      InkWell(
                                        child: userData["Profession"] ==
                                                "Professional"
                                            ? const Text(
                                                'Skills Assesment',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              )
                                            : const Text(
                                                'Current Policies',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                      ),
                                      const InkWell(
                                        child: Text('Contact Us',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Card(
                                color: Colors.white70,
                                elevation: 10,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 10, bottom: 10),
                                  child: InkWell(
                                    child: Text(
                                      'Settings',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextButton(
                              onPressed: () {
                                FirebaseAuthMethods(FirebaseAuth.instance)
                                    .logOut(context);
                                Navigator.pushNamed(context, 'sign-in');
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: buttonTheme,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              child: const Text(
                                "Logout",
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
                      ),
                    ),
                  );
                } else if (snapshot.hasError) {}
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            )));
  }
}

