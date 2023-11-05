import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:pmis/presentation/home_screen_old_screen/models/home_screen_old_model.dart';
part 'home_screen_old_event.dart';
part 'home_screen_old_state.dart';

/// A bloc that manages the state of a HomeScreenOld according to the event that is dispatched to it.
class HomeScreenOldBloc extends Bloc<HomeScreenOldEvent, HomeScreenOldState> {
  HomeScreenOldBloc(HomeScreenOldState initialState) : super(initialState) {
    on<HomeScreenOldInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeScreenOldInitialEvent event,
    Emitter<HomeScreenOldState> emit,
  ) async {
    emit(state.copyWith(
        homeScreenOldModelObj: state.homeScreenOldModelObj?.copyWith(
      userprofilelistItemList: fillUserprofilelistItemList(),
    )));
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          userName: "Quis integer vivamus ",
          userDescription:
              "Phasellus dignissim, tellus in pellentesque mollis, mauris orci dignissim nisl.",
          userFollowers: "1.8 M",
          userBio: "Purus mollis nunc "),
      UserprofilelistItemModel(
          userName: "Quis integer vivamus ",
          userDescription:
              "Phasellus dignissim, tellus in pellentesque mollis, mauris orci dignissim nisl.",
          userFollowers: "1.8 M",
          userBio: "Purus mollis nunc ")
    ];
  }
}
