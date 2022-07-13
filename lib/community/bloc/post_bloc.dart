import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:post_repository/post_repository.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc(this._postRepository) : super(PostLoading()) {
    on<PostEvent>((event, emit) {
      on<LoadPosts>(_onLoadPosts);
      on<AddPost>(_onAddPost);
      on<DeletePost>(_onDeletePost);
      on<ReplyPost>(_onReplyPost);
      on<LikePost>(_onLikePost);
    });
  }

  final PostRepository _postRepository;

  FutureOr<void> _onLoadPosts(LoadPosts event, Emitter<PostState> emit) {
    try {
      emit(
        PostsLoaded(posts: event.posts),
      );
    } on PostsLoadedFailure {
      emit(PostsLoadedFailure());
    }
  }

  FutureOr<void> _onAddPost(AddPost event, Emitter<PostState> emit) {
    final state = this.state;

    if (state is PostsLoaded) {
      _postRepository.createNewPost(event.post);
      emit(
        PostsLoaded(
          posts: List.from(state.posts)..add(event.post),
        ),
      );
    }
  }

  FutureOr<void> _onDeletePost(DeletePost event, Emitter<PostState> emit) {
    final state = this.state;
    if (state is PostsLoaded) {
      List<Post> posts =
          state.posts.where((post) => post.id != event.post.id).toList();
    }
  }

  FutureOr<void> _onReplyPost(ReplyPost event, Emitter<PostState> emit) {}

  FutureOr<void> _onLikePost(LikePost event, Emitter<PostState> emit) {}
}
