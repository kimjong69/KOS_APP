import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../utils/showSnackBar.dart';

class FirebaseAuthMethods extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final FirebaseAuth _auth;
  FirebaseAuthMethods(this._auth);
  Future<void> signUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      UserCredential userCredential=await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await sendEmailVerification(context);
      _firestore.collection('Users').doc(userCredential.user!.email).set({
        'uid': userCredential.user!.uid,
        'email':userCredential.user!.email,
      });
      Navigator.pushNamed(context, 'verify-email');
    } on FirebaseAuthException catch (e) {
      print(e.message);
      showSnackBar(context, e.message!);
    }
  }

  Future<void> signinWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      UserCredential userCredential=await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _firestore.collection('Users').doc(userCredential.user!.email).update({
        'uid': userCredential.user!.uid,
        'email':userCredential.user!.email,
      });
      if (!_auth.currentUser!.emailVerified) {
        _auth.currentUser!.sendEmailVerification();
        Navigator.pushNamed(context, 'verify-email');
      } else {
        Navigator.pushNamed(context, 'prof-profile');
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      _auth.currentUser!.sendEmailVerification();
      showSnackBar(context, 'Email Verification has been sent');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  Future<void> logOut(BuildContext context) async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }
}
