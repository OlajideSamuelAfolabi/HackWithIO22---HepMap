import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.username,
    required this.email,
    required this.imageUrl,
  });

  final String id;
  final String username;
  final String email;
  final String imageUrl;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      username: json['username'] ?? '',
      email: json['email'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'email': email,
      'imageUrl': imageUrl,
    };
  }

  factory User.empty() {
    return User(
      id: '',
      username: '',
      email: '',
      imageUrl: '',
    );
  }

  // User copyWith({
  //   String? userName,
  //   String? email,
  //   String? dateOfBirth,
  //   String? bio,
  //   String? location,
  //   String? contact,
  // }) {
  //   return User(
  //     id: this.id,
  //     username: userName ?? username,
  //     email: email ?? this.email,
  //     userId: userId,
  //     key: key,
  //     bio: bio ?? this.bio,
  //     dateOfBirth: dateOfBirth ?? this.dateOfBirth,
  //     location: location ?? this.location,
  //     contact: contact ?? this.contact,
  //   );
  // }

  @override
  List<Object?> get props => [
        username,
        id,
        email,
        imageUrl,
      ];
}
