import 'package:app_test_vacancy/data/const.dart';
import 'package:app_test_vacancy/models/room_info_model.dart';
import 'package:app_test_vacancy/widgets_common/appbar_custom_widget.dart';
import 'package:flutter/material.dart';

class RoomPageLoadedLayout extends StatelessWidget {
  final String hotelName;
  final RoomInfoModel data;
  const RoomPageLoadedLayout(
      {super.key, required this.data, required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kSizeAppBarHeight),
        child: AppBarCustomWidget(
          title: hotelName,
          isBackArrow: true,
        ),
      ),
      body: Center(child: Text(data.rooms[0].name)),
    );
  }
}
