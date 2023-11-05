/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.userName,
    this.userDescription,
    this.userFollowers,
    this.userBio,
    this.id,
  }) {
    userName = userName ?? "Quis integer vivamus ";
    userDescription = userDescription ??
        "Phasellus dignissim, tellus in pellentesque mollis, mauris orci dignissim nisl.";
    userFollowers = userFollowers ?? "1.8 M";
    userBio = userBio ?? "Purus mollis nunc ";
    id = id ?? "";
  }

  String? userName;

  String? userDescription;

  String? userFollowers;

  String? userBio;

  String? id;
}
