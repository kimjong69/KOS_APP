import 'package:flutter/material.dart';

class ScreenSeven extends StatefulWidget {
  const ScreenSeven({super.key});

  @override
  State<ScreenSeven> createState() => _ScreenSevenState();
}

class _ScreenSevenState extends State<ScreenSeven> {
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
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          '0',
                          style: TextStyle(color: Colors.black),
                        ),
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: Colors.yellow[600],
                          shape: OvalBorder(),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        child: Image.asset('assets/arrow.png'),
                      ),
                      Container(
                        child: Text(
                          '50',
                          style: TextStyle(color: Colors.black),
                        ),
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: Colors.yellow[600],
                          shape: OvalBorder(),
                        ),
                        alignment: Alignment.center,
                      ),
                      Container(
                        child: Image.asset('assets/arrow.png'),
                      ),
                      Container(
                        child: Text(
                          '100',
                          style: TextStyle(color: Colors.black),
                        ),
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: Colors.yellow[600],
                          shape: OvalBorder(),
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Qualification Details',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Inter',
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Institute Name',
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
                              hintText: 'e.g.Mumbai University'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Education Level & Degree',
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
                              hintText: 'e.g.Graduation -B.Tech'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Admission Year',
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
                              hintText: 'e.g.2017'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Passout Year',
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
                              hintText: 'e.g.2021'),
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
                            Navigator.pushNamed(context, 'screen8');
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
