import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class UserService {

  late FirebaseAuth _auth;
  late UserModel userModel;
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> createUser(UserModel user) async {
    await userCollection.doc(user.uuid).set({
      'fullName': user.fullName,
      'email': user.email,
      'phoneNumber': user.phoneNumber,
    });
  }

  Future sendPasswordReset(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  Future<String?> getUserId(String email) async {
    QuerySnapshot snapshot =
        await userCollection.where('email', isEqualTo: email).get();

    if (snapshot.docs.length > 0) {
      return snapshot.docs[0].id;
    } else {
       return null;
    }
  }
}
