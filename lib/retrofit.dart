import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:instacart/apiModal.dart';

part 'retrofit.g.dart';


@RestApi(baseUrl: "https://gorest.co.in/public-api/")
abstract class getRequest {
  factory getRequest(Dio dio, {String baseUrl}) =_getRequest;

  @GET("/users")
  // Future<ResponseModel> fetchData();
  Future<ResponseData> fetchData();
}


