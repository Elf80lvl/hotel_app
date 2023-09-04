import 'package:app_test_vacancy/models/booking_info_model.dart';
import 'package:app_test_vacancy/repositories/hotel_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'booking_page_event.dart';
part 'booking_page_state.dart';

class BookingPageBloc extends Bloc<BookingPageEvent, BookingPageState> {
  BookingPageBloc() : super(BookingPageLoadingState()) {
    on<BookingPageGetBookingInfoEvent>((event, emit) async {
      try {
        emit(BookingPageLoadingState());
        final data = await HotelRepo.getBookingInfo();
        emit(BookingPageLoadedState(data: data));
      } catch (e) {
        print(e);
        emit(BookingPageErrorState(error: e));
      }
    });
  }
}
