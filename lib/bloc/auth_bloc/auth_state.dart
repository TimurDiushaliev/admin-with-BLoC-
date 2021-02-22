abstract class AuthState {}

class SignedInState extends AuthState {}

class AppLoaddedState extends AuthState {}

class AuthProcessingState extends AuthState {}

class NoAccountState extends AuthState {}

class AuthErrorState extends AuthState {}
