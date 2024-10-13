import 'package:bloc/bloc.dart';
import 'package:bloc_management/bloc/sign_in/sign_in_event.dart';
import 'package:bloc_management/bloc/sign_in/sign_in_state.dart';
import 'package:email_validator/email_validator.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitialState()) {

    on<SignInChangedEvent>((event, emit) {
      if (EmailValidator.validate(event.email) == false) {
        emit(SignInErrorState('Please enter valid email address'));
      } else if (event.password.length < 8) {
        emit(SignInErrorState('Please enter valid email password'));
      } else
        (emit(SignInValidState()));
    });

    on<SignInSubmittedEvent>((event, emit) {
      emit(SignInLoadingState());
    });
  }
}
