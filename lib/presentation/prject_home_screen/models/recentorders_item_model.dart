import '../../../core/app_export.dart';

/// This class is used in the [recentorders_item_widget] screen.
class RecentordersItemModel {
  RecentordersItemModel({
    this.userImage,
    this.userName,
    this.userDescription,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgFile;
    userName = userName ?? "5M";
    userDescription = userDescription ?? "Vel consequat ";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? userDescription;

  String? id;
}
