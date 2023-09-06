import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'tourists_event.dart';
part 'tourists_state.dart';

List<Map<String, dynamic>> touristsData = [
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {},
  {}
];
int touristsCounter = 1;

class TouristsBloc extends Bloc<TouristsEvent, TouristsState> {
  TouristsBloc()
      : super(TouristsState(
          touristsCounter: touristsCounter,
          touristsData: touristsData,
        )) {
    //
    on<TouristsAddEvent>((event, emit) {
      if (touristsCounter < 11) {
        touristsCounter++;
      }
      emit(TouristsState(
          touristsData: touristsData, touristsCounter: touristsCounter));
    });
    //
    on<TouristUpdateNameEvent>(
      (event, emit) {
        touristsData[event.index] = {"name": event.name};
        print(touristsData);
        emit(TouristsState(
            touristsData: touristsData, touristsCounter: touristsCounter));
      },
    );
    //*on submit
    on<TouristsOnSubmitEvent>(
      (event, emit) {},
    );
  }
}
