import 'package:post_repository/post_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebasePostRepository implements PostRepository {
  final postsCollection = FirebaseFirestore.instance.collection('posts');
  @override
  Future<void> createNewPost(Post post) {
    return postsCollection.add(post.toEntity().toDocument());
  }

  @override
  Future<void> deletePost(Post post) {
    return postsCollection.doc(post.id).delete();
  }

  @override
  Stream<List<Post>> getPosts() {
    return postsCollection.snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => Post.fromEntity(PostEntity.fromSnapshot(doc)))
          .toList();
    });
  }

  @override
  Future<void> updatePost(Post update) {
    return postsCollection
        .doc(update.id)
        .update(update.toEntity().toDocument());
  }
}
