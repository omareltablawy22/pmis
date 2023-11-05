import '../../../core/app_export.dart';

/// This class is used in the [clienttestimonials_item_widget] screen.
class ClienttestimonialsItemModel {
  ClienttestimonialsItemModel({
    this.userImage,
    this.menuImage,
    this.threeText,
    this.velConsequatText,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgRectangle1425BlueGray200119x1;
    menuImage = menuImage ?? ImageConstant.imgMenu;
    threeText = threeText ?? "03";
    velConsequatText = velConsequatText ?? "Vel consequat ";
    id = id ?? "";
  }

  String? userImage;

  String? menuImage;

  String? threeText;

  String? velConsequatText;

  String? id;
}
