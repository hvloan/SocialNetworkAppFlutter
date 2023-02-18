import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String email;
  final String uid;
  final String photoUrl;
  final String userName;
  final String fullName;
  final List followers;
  final List following;

  const User(
      {required this.userName,
      required this.uid,
      required this.photoUrl,
      required this.email,
      required this.fullName,
      required this.followers,
      required this.following});

  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      userName: snapshot["userName"],
      uid: snapshot["uid"],
      email: snapshot["email"],
      photoUrl: snapshot["photoUrl"],
      fullName: snapshot["fullName"],
      followers: snapshot["followers"],
      following: snapshot["following"],
    );
  }

  Map<String, dynamic> toJson() => {
        "username": userName,
        "uid": uid,
        "email": email,
        "photoUrl": photoUrl,
        "bio": fullName,
        "followers": followers,
        "following": following,
      };
}
