import 'package:dio/dio.dart';
import 'package:mon_hopital/core/networking/api_constants.dart';
import 'package:mon_hopital/features/login/data/models/login_request_body.dart';
import 'package:mon_hopital/features/login/data/models/login_response.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody request);
}
