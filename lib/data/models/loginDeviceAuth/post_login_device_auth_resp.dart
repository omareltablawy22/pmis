class PostLoginDeviceAuthResp {
  User? user;
  String? accessToken;
  String? tokenType;
  int? expiresIn;

  PostLoginDeviceAuthResp(
      {this.user, this.accessToken, this.tokenType, this.expiresIn});

  PostLoginDeviceAuthResp.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user?.toJson();
    }
    if (accessToken != null) {
      data['access_token'] = accessToken;
    }
    if (tokenType != null) {
      data['token_type'] = tokenType;
    }
    if (expiresIn != null) {
      data['expires_in'] = expiresIn;
    }
    return data;
  }
}

class User {
  int? id;
  String? username;
  int? groupId;

  User({this.id, this.username, this.groupId});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    groupId = json['group_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (id != null) {
      data['id'] = id;
    }
    if (username != null) {
      data['username'] = username;
    }
    if (groupId != null) {
      data['group_id'] = groupId;
    }
    return data;
  }
}
