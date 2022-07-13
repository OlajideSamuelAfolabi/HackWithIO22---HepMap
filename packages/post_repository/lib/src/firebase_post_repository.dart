import 'package:firebase_auth/firebase_auth.dart';
import 'package:post_repository/post_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseAuth firebaseAuth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;

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

  Future<void> replyPost(Post post, String replyText) async {
    if (replyText == '') {
      return;
    }
    await post.ref!.collection('replies').add(post
        .copyWith(
          description: replyText,
          author: firebaseAuth.currentUser!.displayName!,
          timestamp: Timestamp.now(),
        )
        .toEntity()
        .toJson());
  }

  Future<void> likePost(Post post, bool current) async {
    if (current) {
      post.numberOfLikes = post.numberOfLikes! - 1;
      await firestore
          .collection('posts')
          .doc(post.id)
          .collection('likes')
          .doc(firebaseAuth.currentUser!.uid)
          .delete();
    }
  }

  @override
  Future<void> updatePost(Post update) {
    return postsCollection
        .doc(update.id)
        .update(update.toEntity().toDocument());
  }
}
