class Password {
  String? _password;

  Password({String? password}) {
    _password = password;
  }

  String? get password => _password;

  set password(String? value) {
    _password = value;
  }

  bool isValid() {
    final pass = _password ?? '';
    final hasUpper = pass.contains(RegExp(r'[A-Z]'));
    final hasLower = pass.contains(RegExp(r'[a-z]'));
    final hasDigit = pass.contains(RegExp(r'[0-9]'));
    return pass.length >= 8 && pass.length <= 16 && hasUpper && hasLower && hasDigit;
  }

  String toString() {
    return 'Your Password is: ${_password ?? ''}';
  }
}

class User extends Password {
  int? id;
  String? name;
  int? age;
  double? height;
  String? _userPassword;

  User({
    this.id,
    this.name,
    this.age,
    this.height,
    String? user_password,
  }) : super(password: user_password) {
    _userPassword = user_password;
  }

  String? get user_password => _userPassword;

  set user_password(String? value) {
    _userPassword = value;
    super.password = value;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id ?? 0,
      'name': name ?? '',
      'age': age ?? 0,
      'height': height ?? 0.0,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return 'User(id : ${id ?? ''} ,name: ${name ?? ''}, age: ${age ?? ''}, height: ${height ?? ''}, Password: ${isValid()})';
  }
}
