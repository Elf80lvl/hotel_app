import 'package:app_test_vacancy/models/hotel_info_model.dart';
import 'package:dio/dio.dart';

class Network {
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
}
