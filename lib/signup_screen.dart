import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kos_app/services/firebase_auth_methods.dart';
import 'package:kos_app/utils/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void signUpUser() async {
    FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEmail(
      email: emailController.text,
      password: passwordController.text,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 110,
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  foregroundImage: AssetImage('assets/Business1.png'),
                  backgroundColor: Color(0xFFD9D9D9),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Sign-Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'You will log in after verification if you are not registered.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              // width: 350,
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: 'Valid E-mail ID'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              // width: 350,
              child: TextField(
                textCapitalization: TextCapitalization.sentences,
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                    filled: true, fillColor: Colors.grey, hintText: 'Password'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: signUpUser,
              style: TextButton.styleFrom(
                  fixedSize: const Size(305, 47),
                  backgroundColor: buttonTheme,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                "Verify E-mail",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'By continuing you agree to KOS\'s Terms & Conditions and Confirm that you have read KOS\'s privacy policy',
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
