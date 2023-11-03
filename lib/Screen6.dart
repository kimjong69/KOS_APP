import 'package:flutter/material.dart';
import 'package:kos_app/reusable_card.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height*0.9,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset('assets/camera.png'),
                        width: 80,
                        height: 80,
                        decoration: ShapeDecoration(
                          color: Colors.black,
                          shape: OvalBorder(),
                        ),
                        alignment: Alignment.center,
                      ),
                      Text(
                        'Upload',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.black,
                  indent: 20,
                  endIndent: 20,
                  thickness: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'My Gender',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        Row(
                          children: [
                            ReusableCard(
                              onPress: (){
                                setState(() {
                                  selectedGender = Gender.male;
                                });
                              },
                              cardChild: Text('Male',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                              colour: selectedGender == Gender.male
                                  ? Color(0xFFA26BE9)
                                  : Colors.grey,
                            ),
                            ReusableCard(
                              onPress: (){
                                setState(() {
                                  selectedGender = Gender.female;
                                });
                              },
                              cardChild: Text('Female',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                              colour: selectedGender == Gender.female
                                  ? Color(0xFFA26BE9)
                                  : Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'I Am           ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                        Row(
                          children: [
                            ReusableCard(
                              onPress: (){
                                setState(() {
                                  selectedExperience = Experience.experienced;
                                });
                              },
                              cardChild: Text('Experienced',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                              colour: selectedExperience == Experience.experienced
                                  ? Color(0xFFA26BE9)
                                  : Colors.grey,
                            ),
                            ReusableCard(
                              onPress: (){
                                setState(() {
                                  selectedExperience = Experience.fresher;
                                });
                              },
                              cardChild: Text('Fresher',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                              colour: selectedExperience == Experience.fresher
                                  ? Color(0xFFA26BE9)
                                  : Colors.grey,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.black,
                  indent: 20,
                  endIndent: 20,
                  thickness: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First Name',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g.Raj'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Last Name',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g.Sharma'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Email Address',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g.sharma@gmail.com'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Date of Birth',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[700],
                            hintText: 'e.g.may 1999'),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(
                  width: 350,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Back',style: TextStyle(color: Colors.black),),
                        style: TextButton.styleFrom(
                            fixedSize: Size(111, 28),
                            backgroundColor: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'screen7');
                        },
                        child: Text('Save & Next',style: TextStyle(color: Colors.black),),
                        style: TextButton.styleFrom(
                            fixedSize: Size(111, 28),
                            backgroundColor: Color(0xFFA26BE9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
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
