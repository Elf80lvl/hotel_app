part of 'booking_page_bloc.dart';

sealed class BookingPageEvent extends Equatable {
  const BookingPageEvent();

  @override
  List<Object> get props => [];
}

final class BookingPageGetBookingInfoEvent extends BookingPageEvent {}

final class BookingPageOnSubmitEvent extends BookingPageEvent {}

final class BookinPageUpdatePhoneEvent extends BookingPageEvent {
  final String phone;

  const BookinPageUpdatePhoneEvent({required this.phone});
  @override
  List<Object> get props => [phone];
}

final class BookinPageUpdateEmailEvent extends BookingPageEvent {
  final String email;

  const BookinPageUpdateEmailEvent({required this.email});
  @override
  List<Object> get props => [email];
}
