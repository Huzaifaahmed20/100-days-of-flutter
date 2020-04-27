class UserModel {
  String name;
  String avatar;
  String placeholderAvatar;

  UserModel({this.name, this.avatar, this.placeholderAvatar});
}

class UserProfile {
  UserModel get profile {
    return UserModel(
        name: 'Huzaifa',
        avatar:
            'https://s3.amazonaws.com/uifaces/faces/twitter/_pedropinho/128.jpg',
        placeholderAvatar:
            'assets/images/placeholder.png');
  }
}
