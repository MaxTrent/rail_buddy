import 'dart:io';
class AdminModel{
  String? userName;
  String? email;
  String? uuid;


    AdminModel.fromMap(Map<String, dynamic> data) {
    userName = data['userName'];
    email = data['email'];
    uuid = data['uuid'];
  }

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'email': email,
      'uuid': uuid,
    };
  }
}
 
