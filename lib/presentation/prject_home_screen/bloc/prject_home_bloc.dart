import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/clienttestimonials_item_model.dart';
import '../models/reviews_item_model.dart';
import '../models/recentorders_item_model.dart';
import 'package:pmis/presentation/prject_home_screen/models/prject_home_model.dart';
part 'prject_home_event.dart';
part 'prject_home_state.dart';

/// A bloc that manages the state of a PrjectHome according to the event that is dispatched to it.
class PrjectHomeBloc extends Bloc<PrjectHomeEvent, PrjectHomeState> {
  PrjectHomeBloc(PrjectHomeState initialState) : super(initialState) {
    on<PrjectHomeInitialEvent>(_onInitialize);
  }

  List<ClienttestimonialsItemModel> fillClienttestimonialsItemList() {
    return [
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgRectangle1425BlueGray200119x1,
          menuImage: ImageConstant.imgMenu,
          threeText: "03",
          velConsequatText: "Vel consequat "),
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgRectangle1425BlueGray200119x1,
          menuImage: ImageConstant.imgGroup2803,
          threeText: "5M",
          velConsequatText: "Vel consequat "),
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgRectangle1425119x1,
          menuImage: ImageConstant.imgSettings,
          threeText: "5M",
          velConsequatText: "Vel consequat "),
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgRectangle1425119x1,
          menuImage: ImageConstant.imgFile,
          threeText: "5M",
          velConsequatText: "Vel consequat "),
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgRectangle1425119x1,
          menuImage: ImageConstant.imgGroup2796,
          threeText: "03",
          velConsequatText: "Vel consequat "),
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgRectangle1425119x1,
          menuImage: ImageConstant.imgTrash,
          threeText: "5M",
          velConsequatText: "Vel consequat "),
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgRectangle1425119x1,
          menuImage: ImageConstant.imgSettings,
          threeText: "5M",
          velConsequatText: "Vel consequat "),
      ClienttestimonialsItemModel(
          userImage: ImageConstant.imgRectangle1425119x1,
          menuImage: ImageConstant.imgFile,
          threeText: "5M",
          velConsequatText: "Vel consequat ")
    ];
  }

  List<ReviewsItemModel> fillReviewsItemList() {
    return [
      ReviewsItemModel(
          userName: "Est lobortis curabitur ",
          userPercentage: "100%",
          userDescription: "Vel consequat ",
          userDescription2: "Vel consequat "),
      ReviewsItemModel(
          userName: "Est lobortis curabitur ",
          userPercentage: "80%",
          userDescription: "Vel consequat ",
          userDescription2: "Vel consequat "),
      ReviewsItemModel(
          userName: "Est lobortis curabitur ",
          userPercentage: "40%",
          userDescription: "Vel consequat ",
          userDescription2: "Vel consequat "),
      ReviewsItemModel(
          userName: "Est lobortis curabitur ",
          userPercentage: "20%",
          userDescription: "Vel consequat ",
          userDescription2: "Vel consequat ")
    ];
  }

  List<RecentordersItemModel> fillRecentordersItemList() {
    return [
      RecentordersItemModel(
          userImage: ImageConstant.imgFile,
          userName: "5M",
          userDescription: "Vel consequat "),
      RecentordersItemModel(
          userImage: ImageConstant.imgGroup2796,
          userName: "03",
          userDescription: "Vel consequat "),
      RecentordersItemModel(
          userImage: ImageConstant.imgTrash,
          userName: "5M",
          userDescription: "Vel consequat "),
      RecentordersItemModel(
          userImage: ImageConstant.imgSettings,
          userName: "5M",
          userDescription: "Vel consequat "),
      RecentordersItemModel(
          userImage: ImageConstant.imgFile,
          userName: "5M",
          userDescription: "Vel consequat ")
    ];
  }

  _onInitialize(
    PrjectHomeInitialEvent event,
    Emitter<PrjectHomeState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        prjectHomeModelObj: state.prjectHomeModelObj?.copyWith(
            clienttestimonialsItemList: fillClienttestimonialsItemList(),
            reviewsItemList: fillReviewsItemList(),
            recentordersItemList: fillRecentordersItemList())));
  }
}
