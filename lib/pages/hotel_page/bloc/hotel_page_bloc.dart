import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:app_test_vacancy/service/network.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'hotel_page_event.dart';
part 'hotel_page_state.dart';

class HotelPageBloc extends Bloc<HotelPageEvent, HotelPageState> {
  HotelPageBloc() : super(HotelPageLoadingState()) {
    on<HotelPageGetInfoEvent>((event, emit) async {
      emit(HotelPageLoadingState());
      try {
        final data = await Network.getHotelInfo();
        emit(HotelPageLoadedState(data: data));
      } catch (e) {
        emit(HotelPageErrorState(error: e));
      }
    });
  }
}
