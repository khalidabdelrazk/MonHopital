import 'package:mon_hopital/core/networking/api_error_handler.dart';
import 'package:mon_hopital/core/networking/api_result.dart';
import 'package:mon_hopital/core/networking/api_services.dart';
import 'package:mon_hopital/features/login/data/models/login_request_body.dart';
import 'package:mon_hopital/features/login/data/models/login_response.dart';

class LoginRepository {
  final ApiServices _apiServices;

  LoginRepository(this._apiServices);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody requestBody) async {
    try {
      final response = await _apiServices.login(requestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(
        ErrorHandler.handle(e),
      );
    }
  }
}