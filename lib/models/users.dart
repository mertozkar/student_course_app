class Users {
  int userId;
  String userName;
  String userMail;
  String userPassword;
  int userType;

  Users({this.userName, this.userMail, this.userPassword, this.userType});
  Users.withId(
      {this.userId,
      this.userName,
      this.userPassword,
      this.userMail,
      this.userType});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["name"] = userName;
    map["email"] = userMail;
    map["password"] = userPassword;
    map["type"] = userType;
    if (userId != null) {
      map["id"] = userId;
    }
    return map;
  }

  Users.fromObject(dynamic o) {
    this.userId = o["id"];
    this.userName = o["name"];
    this.userMail = o["email"];
    this.userPassword = o["password"];
    this.userType = o["type"];
  }
}
