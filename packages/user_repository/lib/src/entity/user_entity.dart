import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  UserEntity(
    this.username,
    this.email,
    this.photoUrl,
    this.country,
    this.bio,
    this.id,
    this.signedUpAt,
    this.lastSeen,
    this.isOnline,
    this.followerCount,
    this.followingCount,
  );

  final String username;
  final String email;
  final String? photoUrl;
  final String? country;
  final String? bio;
  final String id;
  final Timestamp signedUpAt;
  final Timestamp lastSeen;
  final bool isOnline;
  final int? followerCount;
  final int? followingCount;

  static UserEntity fromJson(Map<String, dynamic> json) => UserEntity(
        json['username'],
        json['email'],
        json['country'],
        json['photoUrl'],
        json['signedUpAt'],
        json['isOnline'],
        json['lastSeen'],
        json['bio'],
        json['id'],
        json['followerCount'],
        json['followingCount'],
      );

  Map<String, Object> toJson() {
    return {
      'username': username,
      'email': email,
      'country': country!,
      'photoUrl': photoUrl!,
      'signedUpAt': signedUpAt,
      'isOnline': isOnline,
      'lastSeen': lastSeen,
      'bio': bio!,
      'id': id,
      'followerCount': followerCount!,
      'followingCount': followingCount!,
    };
  }

  static UserEntity fromSnapshot(DocumentSnapshot snap) {
    return UserEntity(
      snap.get('username'),
      snap.get('email'),
      snap.get('photoUrl'),
      snap.get('country'),
      snap.get('bio'),
      snap.get('id'),
      snap.get('signedUpAt'),
      snap.get('lastSeen'),
      snap.get('isOnline'),
      snap.get('followerCount'),
      snap.get('followingCount'),
    );
  }

  Map<String, Object> toDocument() {
    return {
      'username': username,
      'email': email,
      'country': country!,
      'photoUrl': photoUrl!,
      'signedUpAt': signedUpAt,
      'isOnline': isOnline,
      'lastSeen': lastSeen,
      'bio': bio!,
      'id': id,
      'followerCount': followerCount!,
      'followingCount': followingCount!,
    };
  }

  @override
  List<Object?> get props => [
        username,
        email,
        photoUrl,
        country,
        signedUpAt,
        isOnline,
        lastSeen,
        bio,
        id,
        followerCount,
        followingCount,
      ];
}
