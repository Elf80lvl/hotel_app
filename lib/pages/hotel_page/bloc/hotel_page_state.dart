part of 'hotel_page_bloc.dart';

@immutable
sealed class HotelPageState {}

final class HotelPageLoadingState extends HotelPageState {}

final class HotelPageLoadedState extends HotelPageState {
  final HotelInfoModel data;

  HotelPageLoadedState({required this.data});
}
