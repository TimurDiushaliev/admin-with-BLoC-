class Profile {
  int id;
  ProfileUser user;
  ProfileImage profileImage;
  String position;
  int company;

  Profile({
    this.id,
    this.user,
    this.profileImage,
    this.position,
    this.company,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      id: json['id'],
      user: ProfileUser.fromJson(json['user']),
      profileImage: json['image'] != null ? ProfileImage.fromJson(json['file']) : null,
      position: json['position'],
      company: json['company'],
    );
  }
}

class ProfileUser {
  String userName;
  String firstName;
  String lastName;

  ProfileUser({this.userName, this.firstName, this.lastName});

  factory ProfileUser.fromJson(Map<String, dynamic> json) => ProfileUser(
        userName: json['username'],
        firstName: json['first_name'],
        lastName: json['last_name'],
      );
}

class ProfileImage {
  int id;
  String image;

  ProfileImage({this.id, this.image});

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        id: json['id'],
        image: json['file'],
      );
}
