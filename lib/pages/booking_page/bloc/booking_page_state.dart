part of 'booking_page_bloc.dart';

sealed class BookingPageState extends Equatable {
  const BookingPageState();

  @override
  List<Object> get props => [];
}

final class BookingPageLoadingState extends BookingPageState {}

final class BookingPageLoadedState extends BookingPageState {
  final BookingInfoModel data;

  const BookingPageLoadedState({required this.data});
  @override
  List<Object> get props => [data];
}

final class BookingPageErrorState extends BookingPageState {
  final Object error;

  const BookingPageErrorState({required this.error});
  @override
  List<Object> get props => [error];
}
