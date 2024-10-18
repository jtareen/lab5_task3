class User {
  final String name;
  final String location;
  final String role;
  final String image;

  User(this.name, this.role, this.location, this.image);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json['name'],
      json['role'],
      json['location'],
      json['image'],
    );
  }
}
