import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenEight extends StatefulWidget {
  const ScreenEight({super.key});

  @override
  State<ScreenEight> createState() => _ScreenEightState();
}

class _ScreenEightState extends State<ScreenEight> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05,right: MediaQuery.of(context).size.width*0.05),
          child: Container(
            height: MediaQuery.of(context).size.height*0.95,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  child: Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(

                        children: [
                          Row(
                            children: [
                              Text('Raj \nSharma',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w800),),
                              Spacer(),
                              CircleAvatar(radius:60, foregroundImage: AssetImage('assets/Business1.png'),backgroundColor: Color(0xFFD9D9D9),)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                child: Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                      },
                                      child: Text('Change Picture',style: TextStyle(color: Colors.black,fontSize: 6),),
                                      style: TextButton.styleFrom(
                                          fixedSize: Size(63, 18),
                                          backgroundColor: Color(0xFFA26BE9),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)
                                          )
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text('Edit Profile',style: TextStyle(color: Colors.black,fontSize: 6),),
                                      style: TextButton.styleFrom(
                                          fixedSize: Size(63, 18),
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
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),

                  Container(
                    height: MediaQuery.of(context).size.height*0.05,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                      color: Colors.grey,),


                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Text('Job Preference',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
                    ),
                  ),
                SizedBox(height: 10,),
                Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                    color: Colors.grey,),


                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Saved Post',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
                        Text('Upload Resume',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
                        Text('Government Schemes',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
                        Text('Current Policies',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
                        Text('Contact Us',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: MediaQuery.of(context).size.height*0.05,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),
                    color: Colors.grey,),


                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Text('Settings',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.bell,color: Colors.black,size: 30,)),
                    IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.message,color: Colors.black,size: 30,)),
                    IconButton(onPressed: (){}, icon: FaIcon(FontAwesomeIcons.user,color: Colors.black,size: 30,)),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    ));
  }
}
