import 'package:app_test_vacancy/generated/l10n.dart';
import 'package:app_test_vacancy/pages/hotel_page/bloc/hotel_page_bloc.dart';
import 'package:app_test_vacancy/pages/hotel_page/hotel_layout_loaded.dart';
import 'package:app_test_vacancy/service/capitalize_first.dart';
import 'package:app_test_vacancy/widgets/default_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          S.of(context).hotel.capitalizeFirst(),
        ),
      ),
      body: BlocProvider(
        create: (context) => HotelPageBloc()..add(HotelPageGetInfoEvent()),
        child: BlocBuilder<HotelPageBloc, HotelPageState>(
          builder: (context, state) {
            if (state is HotelPageLoadingState) {
              return const DefaultLoadingWidget();
            }
            if (state is HotelPageLoadedState) {
              return RefreshIndicator(
                onRefresh: () async {
                  BlocProvider.of<HotelPageBloc>(context)
                      .add(HotelPageGetInfoEvent());
                },
                child: HotelLayoutLoaded(
                  data: state.data,
                ),
              );
            }
            //TODO
            return Center(
              child: Text('Unhandled exception'),
            );
          },
        ),
      ),
    );
  }
}
