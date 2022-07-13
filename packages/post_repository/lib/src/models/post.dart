import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

import '../entities/entities.dart';

class Post extends Equatable {
  final String description;
  final String id;
  final String author;
  int? numberOfLikes;
  final int? numberOfComments;
  final Timestamp timestamp;
  DocumentReference? ref;

  Post(
    this.description, {
    required String id,
    required this.author,
    int? numberOfLikes,
    int? numberOfComments,
    required this.timestamp,
    this.ref,
  })  : this.id = id,
        this.numberOfLikes = numberOfLikes ?? 0,
        this.numberOfComments = numberOfComments ?? 0;

  Post copyWith({
    required String description,
    String? id,
    required String author,
    int? numberOfLikes,
    int? numberOfComments,
    required Timestamp timestamp,
  }) {
    return Post(
      description,
      id: id ?? this.id,
      author: author,
      timestamp: timestamp,
      numberOfComments: numberOfComments ?? this.numberOfComments,
      numberOfLikes: numberOfLikes ?? this.numberOfLikes,
    );
  }

  PostEntity toEntity() => PostEntity(
        description,
        id,
        author,
        numberOfLikes,
        numberOfComments,
        timestamp,
        ref,
      );
  static Post fromEntity(PostEntity entity) {
    return Post(
      entity.author,
      id: entity.id,
      author: entity.author,
      timestamp: entity.timestamp,
      numberOfComments: entity.numberOfComments ?? 0,
      numberOfLikes: entity.numberOfLikes ?? 0,
    );
  }

  @override
  List<Object?> get props => [
        description,
        id,
        author,
        numberOfComments,
        numberOfLikes,
        timestamp,
      ];
}
