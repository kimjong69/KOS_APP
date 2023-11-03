import 'package:flutter/material.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Need Help?',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text(
                    'You are looking for?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Job Type',
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
                          hintText: 'e.g.Full Time'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Domain or Expertise',
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
                          hintText: 'e.g.IT-Mobile App-Flutter'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Preferred City',
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
                          hintText: 'e.g.Mumbai'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Expected Salary',
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
                          hintText: 'e.g.4lpa-5lpa'),
                    ),
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
                            Navigator.pushNamed(context, 'screen6');
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
