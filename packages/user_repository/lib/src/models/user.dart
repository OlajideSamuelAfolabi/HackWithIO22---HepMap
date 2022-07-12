import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String username;
  String email;
  String? photoUrl;
  String? country;
  String? bio;
  String id;
  Timestamp signedUpAt;
  Timestamp lastSeen;
  bool isOnline;
  int? followerCount;
  int? followingCount;

  User({
    required this.username,
    required this.email,
    required String id,
    String? photoUrl,
    required this.signedUpAt,
    required this.isOnline,
    int? followerCount,
    int? followingCount,
    required this.lastSeen,
    this.bio,
    required this.country,
  })  : this.id = id,
        this.photoUrl = photoUrl ?? '',
        this.followerCount = followerCount ?? 0,
        this.followingCount = followingCount ?? 0;
}
