import 'package:auth_repository/auth_repository.dart';
import 'package:bloc/bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required AuthRepository authRepository,
  })  : _AuthRepository = authRepository,
        super(AuthInitial()) {
    on<LoginWithEmailAndPassword>(_mapLoginWithEmailAndPasswordEvent);
    on<CreateAccount>(_mapCreateAccountEvent);
  }

  final AuthRepository _AuthRepository;

  Future<void> _mapLoginWithEmailAndPasswordEvent(
    LoginWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _AuthRepository.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(AuthSucess());
    } catch (e) {
      emit(
        AuthFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> _mapCreateAccountEvent(
    CreateAccount event,
    Emitter<AuthState> emit,
  ) async {
    try {
      await _AuthRepository.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(AuthSucess());
    } catch (e) {
      emit(
        AuthFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
