import '../post_repository.dart';

abstract class PostRepository {
  Future<void> createNewPost(Post post);

  Future<void> deletePost(Post post);

  Future<void> updatePost(Post update);

  Stream<List<Post>> posts();
}
