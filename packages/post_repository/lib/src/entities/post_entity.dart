import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class PostEntity extends Equatable {
  final String description;
  final String id;
  final String author;
  final int? numberOfLikes;
  final int? numberOfComments;
  final String timestamp;

  PostEntity(
    this.description,
    this.id,
    this.author,
    this.numberOfLikes,
    this.numberOfComments,
    this.timestamp,
  );

  Map<String, Object> toJson() {
    return {
      'description': description,
      'id': id,
      'author': author,
      'number_of_likes': numberOfLikes!,
      'number_of_comments': numberOfComments!,
      'timestamp': timestamp,
    };
  }

  @override
  String toString() {
    return 'PostEntity { description : $description, id : $id, author : $author, numberOfLikes : $numberOfLikes, numberOfComments : $numberOfComments }';
  }

  static PostEntity fromJson(Map<String, Object> json) {
    return PostEntity(
      json['description'] as String,
      json['id'] as String,
      json['author'] as String,
      json['numberOfLikes'] as int,
      json['numberOfComments'] as int,
      json['timestamp'] as String,
    );
  }

  static PostEntity fromSnapshot(DocumentSnapshot snap) {
    return PostEntity(
      snap.get('description'),
      snap.id,
      snap.get('author'),
      snap.get('number_of_likes'),
      snap.get('number_of_comments'),
      snap.get('timestamp'),
    );
  }

  Map<String, Object> toDocument() {
    return {
      'description': description,
      'author': author,
      'number_of_likes': numberOfLikes!,
      'number_of_comments': numberOfComments!,
      'timestamp': timestamp,
    };
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
