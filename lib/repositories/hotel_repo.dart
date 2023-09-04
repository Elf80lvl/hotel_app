import 'package:app_test_vacancy/models/booking_info_model.dart';
import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:app_test_vacancy/models/room_info_model.dart';
import 'package:dio/dio.dart';

class HotelRepo {
  static Future getHotelInfo() async {
    try {
      final dio = Dio();
      const String url =
          'https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3';
      final response = await dio.get(url);
      return HotelInfoModel.fromRawJson(response.toString());
    } catch (e) {
      print(e);
    }
  }

  static Future getRoomInfo() async {
    try {
      final dio = Dio();
      const String url =
          'https://run.mocky.io/v3/f9a38183-6f95-43aa-853a-9c83cbb05ecd';
      final response = await dio.get(url);
      return RoomInfoModel.fromRawJson(response.toString());
    } catch (e) {
      print(e);
    }
  }

  static Future getBookingInfo() async {
    try {
      final dio = Dio();
      const String url =
          'https://run.mocky.io/v3/e8868481-743f-4eb2-a0d7-2bc4012275c8';
      final response = await dio.get(url);
      return BookingInfoModel.fromRawJson(response.toString());
    } catch (e) {
      print(e);
    }
  }
}
