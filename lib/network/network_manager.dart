import 'package:clump_task/network/requests/log_in_request.dart';
import 'package:clump_task/network/requests/sign_up_request.dart';
import 'package:http/http.dart' as http;

class NetworkManager {
  static const baseUrl = 'http://practical.clumpcrm.com/api';

  final logInUrl = Uri.parse('$baseUrl/login');
  final signUpUrl = Uri.parse('$baseUrl/registration');

  Future<http.Response> logIn(LogInRequest logInRequest) {
    return http.post(logInUrl, body: logInRequest.toJson());
  }

  Future<http.StreamedResponse> signUp(SignUpRequest signUpRequest) {
    final request = http.MultipartRequest('POST', signUpUrl);
    request.fields['full_name'] = signUpRequest.fullName;
    request.fields['contactNo'] = signUpRequest.contactNo.toString();
    request.fields['user_name'] = signUpRequest.userName;
    request.fields['password'] = signUpRequest.password;
    request.fields['confirm_password'] = signUpRequest.confirmPassword;
    request.fields['cmpName'] = signUpRequest.companyName;
    request.fields['cmp_address'] = signUpRequest.companyAddress;
    request.fields['cmp_logo'] = signUpRequest.companyLogo;
    return request.send();
  }
}
