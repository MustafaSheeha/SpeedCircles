class UserModel {
  String? fullName;
  String? email;
  String? password;
  String? confirmPassword;

  UserModel({this.fullName, this.email, this.password, this.confirmPassword});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      fullName: json['fullName'],
      email: json['email'],
      password: json['password'],
      confirmPassword: json['confirmPassword'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (fullName != null) 'fullName': fullName,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (confirmPassword != null) 'confirmPassword': confirmPassword
    };
  }
}
