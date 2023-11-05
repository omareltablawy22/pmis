// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'clienttestimonials_item_model.dart';
import 'reviews_item_model.dart';
import 'recentorders_item_model.dart';

/// This class defines the variables used in the [prject_home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PrjectHomeModel extends Equatable {
  PrjectHomeModel({
    this.clienttestimonialsItemList = const [],
    this.reviewsItemList = const [],
    this.recentordersItemList = const [],
  }) {}

  List<ClienttestimonialsItemModel> clienttestimonialsItemList;

  List<ReviewsItemModel> reviewsItemList;

  List<RecentordersItemModel> recentordersItemList;

  PrjectHomeModel copyWith({
    List<ClienttestimonialsItemModel>? clienttestimonialsItemList,
    List<ReviewsItemModel>? reviewsItemList,
    List<RecentordersItemModel>? recentordersItemList,
  }) {
    return PrjectHomeModel(
      clienttestimonialsItemList:
          clienttestimonialsItemList ?? this.clienttestimonialsItemList,
      reviewsItemList: reviewsItemList ?? this.reviewsItemList,
      recentordersItemList: recentordersItemList ?? this.recentordersItemList,
    );
  }

  @override
  List<Object?> get props =>
      [clienttestimonialsItemList, reviewsItemList, recentordersItemList];
}
