import 'package:app_test_vacancy/data/const.dart';
import 'package:app_test_vacancy/models/room_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RoomPageLoadedLayout extends StatelessWidget {
  final String hotelName;
  final RoomInfoModel data;
  const RoomPageLoadedLayout(
      {super.key, required this.data, required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/icons/arrowBackIcon.svg'),
        ),
        centerTitle: true,
        title: Text(
          hotelName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: kFontFamilyDefault,
          ),
        ),
      ),
      body: Center(child: Text(data.rooms[0].name)),
    );
  }
}
