import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PostEntity extends Equatable {
  final String description;
  final String id;
  final String author;
  final int? numberOfLikes;
  final int? numberOfComments;
  final Timestamp timestamp;
  DocumentReference? ref;

  PostEntity(
    this.description,
    this.id,
    this.author,
    this.numberOfLikes,
    this.numberOfComments,
    this.timestamp,
    this.ref,
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
      json['timestamp'] as Timestamp,
      json['ref'] as DocumentReference,
    );
  }

  static PostEntity fromSnapshot(DocumentSnapshot snap) {
    final postEntity = PostEntity.fromJson(snap.data() as Map<String, Object>);
    return postEntity;
  }

  Map<String, Object> toDocument() {
    return {
      'description': description,
      'author': FirebaseAuth.instance.currentUser!.uid,
      'number_of_likes': numberOfLikes!,
      'number_of_comments': numberOfComments!,
      'timestamp': FieldValue.serverTimestamp(),
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
