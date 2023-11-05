/// This class is used in the [reviews_item_widget] screen.
class ReviewsItemModel {
  ReviewsItemModel({
    this.userName,
    this.userPercentage,
    this.userDescription,
    this.userDescription2,
    this.id,
  }) {
    userName = userName ?? "Est lobortis curabitur ";
    userPercentage = userPercentage ?? "100%";
    userDescription = userDescription ?? "Vel consequat ";
    userDescription2 = userDescription2 ?? "Vel consequat ";
    id = id ?? "";
  }

  String? userName;

  String? userPercentage;

  String? userDescription;

  String? userDescription2;

  String? id;
}
