part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  const PostEvent();

  @override
  List<Object> get props => [];
}

class LoadPosts extends PostEvent {
  final List<Post> posts;
  const LoadPosts({this.posts = const <Post>[]});

  @override
  List<Object> get props => [posts];
}

class AddPost extends PostEvent {
  final Post post;
  const AddPost({required this.post});

  @override
  List<Object> get props => [post];
}

class DeletePost extends PostEvent {
  final Post post;
  const DeletePost({required this.post});

  @override
  List<Object> get props => [post];
}

class ReplyPost extends PostEvent {
  final Post post;
  const ReplyPost({required this.post});

  @override
  List<Object> get props => [post];
}

class LikePost extends PostEvent {
  final Post post;
  const LikePost({required this.post});

  @override
  List<Object> get props => [post];
}
