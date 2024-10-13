abstract class SignInEvent {}

class SignInChangedEvent extends SignInEvent {
  String email;
  String password;
  SignInChangedEvent(this.email, this.password);
}

class SignInSubmittedEvent extends SignInEvent {
  String email;
  String password;
  SignInSubmittedEvent(this.email, this.password);
}
