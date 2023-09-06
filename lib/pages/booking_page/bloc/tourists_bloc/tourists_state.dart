part of 'tourists_bloc.dart';

class TouristsState {
  final List<Map<String, dynamic>> touristsData;
  final int touristsCounter;
  const TouristsState(
      {required this.touristsData, required this.touristsCounter});

  @override
  List<Object> get props => [touristsData, touristsCounter];
}
