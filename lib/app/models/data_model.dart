class UserDataModel {
  const UserDataModel(
      {required this.id,
      required this.likes,
      required this.imageUrl,
      required this.userProfileUrl,
      required this.userName});

  final String imageUrl;
  final String userProfileUrl;
  final String userName;
  final int likes;
  final String id;
}
