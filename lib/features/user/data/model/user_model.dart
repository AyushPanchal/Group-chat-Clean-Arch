import 'package:chat_app_clean_architecture/features/user/domain/entities/user_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel extends UserEntity {
  const UserModel({
    String? name,
    String? email,
    String? uid,
    String? status,
    String? profileUrl,
  }) : super(
          name: name,
          email: email,
          uid: uid,
          status: status,
          profileUrl: profileUrl,
        );

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    Map<String, dynamic> snapshotMap = snapshot.data() as Map<String, dynamic>;
    return UserModel(
      name: snapshotMap['name'],
      email: snapshotMap['email'],
      uid: snapshotMap['uid'],
      status: snapshotMap['status'],
      profileUrl: snapshotMap['profileUrl'],
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      'name': name,
      'email': email,
      'uid': uid,
      'status': status,
      'profileUrl': profileUrl,
    };
  }
}
