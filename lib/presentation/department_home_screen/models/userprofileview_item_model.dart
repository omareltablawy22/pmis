/// This class is used in the [userprofileview_item_widget] screen.
class UserprofileviewItemModel {
  UserprofileviewItemModel({
    this.userName,
    this.userDescription,
    this.userAge,
    this.userLocation,
    this.id,
  }) {
    userName = userName ?? "Est lobortis curabitur ";
    userDescription = userDescription ?? "Vel consequat ";
    userAge = userAge ?? "03";
    userLocation = userLocation ?? "Vel consequat ";
    id = id ?? "";
  }

  String? userName;

  String? userDescription;

  String? userAge;

  String? userLocation;

  String? id;
}
