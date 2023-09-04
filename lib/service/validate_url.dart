import 'package:dio/dio.dart';

class ValidateUrl {
  static Future<String> validate(String url) async {
    const urlPlaceholder =
        'https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png?20210219185637';
    final dio = Dio();
    try {
      final res = await dio.get(url);
      if (res.statusCode == 200) {
        return url;
      } else {
        return urlPlaceholder;
      }
    } catch (e) {
      print(e);
      return urlPlaceholder;
    }
  }
}
