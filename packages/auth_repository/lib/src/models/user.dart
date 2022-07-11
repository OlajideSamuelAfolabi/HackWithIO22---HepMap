import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.username,
    required this.email,
    this.imageUrl,
    this.userId,
    this.key,
    this.dateOfBirth,
    this.bio,
    this.location,
    this.isMedicalProfessional = false,
    this.contact,
  });

  final String id;
  final String username;
  final String email;
  final String? imageUrl;
  final String? userId;
  final String? key;
  final String? dateOfBirth;
  final String? bio;
  final String? location;
  final String? contact;
  final bool isMedicalProfessional;

  User copyWith({
    String? userName,
    String? email,
    String? dateOfBirth,
    String? bio,
    String? location,
    String? contact,
  }) {
    return User(
      id: this.id,
      username: userName ?? username,
      email: email ?? this.email,
      userId: userId,
      key: key,
      bio: bio ?? this.bio,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      location: location ?? this.location,
      contact: contact ?? this.contact,
    );
  }

  static const empty = User(id: '', username: '', email: '');

  bool get isEmpty => this == User.empty;

  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [
        username,
        userId,
        email,
        key,
        dateOfBirth,
        imageUrl,
        bio,
        location,
        contact,
      ];
}
