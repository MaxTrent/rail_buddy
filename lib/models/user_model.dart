import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
   final String fullName;
   final String email;
   final String phoneNumber;
   final String uuid;

  UserModel({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.uuid,
  });

  factory UserModel.fromFirestore(DocumentSnapshot documentSnapshot) {
    Map data = documentSnapshot.data as Map;
    return UserModel(
      fullName: data['fullName'] ?? '',
      email: data['email'] ?? '',
      phoneNumber: data['phoneNumber'] ?? '',
      uuid: documentSnapshot.id,
    );
  }
}