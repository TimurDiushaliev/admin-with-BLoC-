import 'package:admin/bloc/auth_bloc/auth_event.dart';
import 'package:admin/bloc/auth_bloc/auth_state.dart';
import 'package:admin/services/auth/auth_service.dart';
import 'package:admin/services/auth/admin_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final authProvider = AuthService();
  AdminRepository adminRepository = AdminRepository();

  AuthBloc(adminRepository) : super(NoAccountState());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is SignInEvent) {
      yield AuthProcessingState();
      try {
        await authProvider.signIn(event.username, event.password);
        yield SignedInState();
      } catch (_) {
        AuthErrorState();
      }
    }
    if (event is SignOutEvent) {
      authProvider.signOut();
      yield NoAccountState();
    }
  }
}
