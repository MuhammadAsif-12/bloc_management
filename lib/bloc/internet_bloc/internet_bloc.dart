import 'dart:async';

import 'package:bloc/bloc.dart';
import 'internet_event.dart';
import 'internet_state.dart';
import 'package:connectivity/connectivity.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  final Connectivity _connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;

  InternetBloc() : super(InternetInitialState()) {
    on<InternetLostEvent>((event, emit) {
      emit(InternetLostState());
    });
    on<InternetGainedEvent>((event, emit) {
      emit(InternetGainedState());
    });

    connectivitySubscription ==
        _connectivity.onConnectivityChanged.listen((results) {
          if (results == ConnectivityResult.mobile ||
              results == ConnectivityResult.wifi) {
            add(InternetGainedEvent());
          } else {
            add(InternetLostEvent());
          }
        });
  }
  @override
  Future<void> close() {
    connectivitySubscription?.cancel();
    return super.close();
  }
}
