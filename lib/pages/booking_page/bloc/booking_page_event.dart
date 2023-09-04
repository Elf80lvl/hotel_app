part of 'booking_page_bloc.dart';

sealed class BookingPageEvent extends Equatable {
  const BookingPageEvent();

  @override
  List<Object> get props => [];
}

final class BookingPageGetBookingInfoEvent extends BookingPageEvent {}
