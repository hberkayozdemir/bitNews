// @dart=2.9

class User {
  String name;
  String surname;
  String email;
  String password;
  User({
    this.name,
    this.surname,
    this.email,
    this.password,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      surname: map['surname'],
      email: map['email'],
      password: map['password'],
    );
  }
}
