class User {
  String? userName;
  String? email;
  String? uuid;


  User.fromMap(Map<String, dynamic> data) {
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
