class UserCredentials {
  String id;
  String name;
  String email;
  String profileImage;

  UserCredentials({
    required this.id,
    required this.name,
    required this.email,
    this.profileImage=""
  });

  factory UserCredentials.fromMap(Map<String, dynamic> json) =>
      new UserCredentials(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        profileImage: json["profileImage"]
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'email': email,
        'profileImage':profileImage
      };
}
