class SignUpRequest {
  late String fullName;
  late String userName;
  late String password;
  late String confirmPassword;
  late String companyName;
  late String companyAddress;
  late String companyLogo;
  late int contactNo;

  SignUpRequest({
    required this.fullName,
    required this.userName,
    required this.password,
    required this.confirmPassword,
    required this.companyAddress,
    required this.companyName,
    required this.contactNo,
    required this.companyLogo,
  });

  SignUpRequest.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
    password = json['password'];
    userName = json['user_name'];
    confirmPassword = json['confirm_password'];
    companyAddress = json['cmp_address'];
    companyName = json['cmpName'];
    contactNo = json['contactNo'];
    companyLogo = json['cmp_logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['full_name'] = fullName;
    data['password'] = password;
    data['user_name'] = userName;
    data['confirm_password'] = confirmPassword;
    data['cmp_address'] = companyAddress;
    data['cmpName'] = companyName;
    data['contactNo'] = contactNo;
    data['cmp_logo'] = companyLogo;
    return data;
  }
}
