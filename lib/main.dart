
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kos_app/Screen1.dart';
import 'package:kos_app/Screen2.dart';
import 'package:kos_app/Screen4.dart';
import 'package:kos_app/Screen5.dart';
import 'package:kos_app/Screen6.dart';
import 'package:kos_app/Screen7.dart';
import 'package:kos_app/Screen8.dart';
import 'package:kos_app/SplashScreen.dart';
import 'package:kos_app/chat_users_view.dart';
import 'package:kos_app/entre_perso_details.dart';
import 'package:kos_app/hire_talent_screen.dart';
import 'package:kos_app/job_view.dart';
import 'package:kos_app/repre_details.dart';
import 'package:kos_app/schemes_view.dart';
import 'package:kos_app/signin_screen.dart';
import 'package:kos_app/verify_email_view.dart';
import 'signup_screen.dart';
import 'firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
         options:DefaultFirebaseOptions.currentPlatform
       );
  runApp(
    MaterialApp(
      // home: const HomePage(),
      initialRoute: 'chat-users-list',
      debugShowCheckedModeBanner: false,
      title: 'KOS',
      theme: ThemeData.dark(),
      routes: {
        'splash':(context)=> const SplashScreen(),
        'splash2':(context)=> const ScreenOne(),
        'profession-screen':(context)=> const ScreenTwo(),
        'signup':(context)=> const SignUp(),
        'screen4':(context)=> const ScreenFour(),//dead
        'preference-screen':(context)=>const ScreenFive(),
        'personal-details':(context)=>const ScreenSix(),
        'edu-details':(context)=>const ScreenSeven(),
        'prof-profile':(context)=>const ScreenEight(),
        'sign-in':(context)=> const SignInUser(),
        'verify-email':(context)=> const VerifyEmailView(),
        'job-view':(context)=> const JobView(),
        'schemes-view':(context)=> const SchemesView(),
        'hire-talent-screen':(context)=>const Hire_Talent(),
        'entre-perso-details':(context)=> const CompanyDetails(),
        'repre-details':(context)=> const RepresentativeDetails(),
        'chat-users-list':(context)=> const ChatUsersView(),
      },
    ),
  );
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context){
//     return FutureBuilder(
//       future:Firebase.initializeApp(
//         options:DefaultFirebaseOptions.currentPlatform
//       ),
//       builder: (context, snapshot) {
//         switch (snapshot.connectionState) {
//           case ConnectionState.done:
//             final user = FirebaseAuth.instance.currentUser;
//             if (user != null) {
//               if (user.emailVerified) {
//                 return const ScreenEight();
//               } else {
//                 return const VerifyEmailView();
//               }
//             } else {
//               return const SplashScreen();
//             }
//
//           default:
//             return const CircularProgressIndicator();
//         }
//       },
//     );
//   }
// }
