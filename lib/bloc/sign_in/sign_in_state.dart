abstract class SignInState {}

class SignInInitialState extends SignInState {}

class SignInValidState extends SignInState {}

class SignInErrorState extends SignInState {
  String errorMessage;
  SignInErrorState(this.errorMessage);
}

class SignInLoadingState extends SignInState {}
