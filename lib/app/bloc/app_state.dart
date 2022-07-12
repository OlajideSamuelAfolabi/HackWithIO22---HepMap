part of 'app_bloc.dart';

/// The different states we can have for the app
/// based on whether the user is authenticated or not.
///
/// {@macro AppStatus}
enum AppStatus {
  authenticated,
  unauthenticated,
}

/// The default app status is `unathenticated` and we will have an empty user
/// in that state until, we have a useer login so that we have our app state
/// to be `authenticated`
///
/// {@macro AppState}
class AppState extends Equatable {
  const AppState._({
    required this.status,
    this.user = User.empty,
  });

  const AppState.authenticated(User user)
      : this._(status: AppStatus.authenticated, user: user);

  const AppState.unauthenticated() : this._(status: AppStatus.unauthenticated);

  final AppStatus status;
  final User user;

  @override
  List<Object> get props => [status, user];
}
