class LogInRequest {
  String? emailOrMobile;
  String? password;
  String? deviceId;
  String? deviceType;
  String? fcmToken;

  LogInRequest({
    this.emailOrMobile,
    this.password,
    this.deviceId,
    this.deviceType,
    this.fcmToken,
  });

  LogInRequest.fromJson(Map<String, dynamic> json) {
    emailOrMobile = json['email_or_mobile'];
    password = json['password'];
    deviceId = json['device_id'];
    deviceType = json['device_type'];
    fcmToken = json['fcm_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email_or_mobile'] = emailOrMobile;
    data['password'] = password;
    data['device_id'] = deviceId;
    data['device_type'] = deviceType;
    data['fcm_token'] = fcmToken;
    return data;
  }
}
