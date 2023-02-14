import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserProviders with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? _userFromFirebaseUser(User? firebaseUser) {
    if (firebaseUser != null) {
      return firebaseUser.uid as User;
    } else {
      return null;
    }
  }

  Stream<User?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser!);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? firebaseUser = result.user;

      // create a new document for the user with uid
      await _firestore.collection('users').doc(firebaseUser?.uid).set({
        'fullname': '',
        'email': email,
        'phoneNumber': '',
      });

      return _userFromFirebaseUser(firebaseUser!);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future deleteAccount() async {
    try {
      User firebaseUser = await _auth.currentUser!;
      await _firestore.collection('users').doc(firebaseUser.uid).delete();
      return await firebaseUser.delete();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future updateUserAccount(
      String fullname, String phoneNumber,) async {
    try {
      User firebaseUser = await _auth.currentUser!;
      await _firestore.collection('users').doc(firebaseUser.uid).update({
        'fullname': fullname,
        'phoneNumber': phoneNumber,
      });
    } catch (error) {
      print(error.toString());
    }
  }
}
