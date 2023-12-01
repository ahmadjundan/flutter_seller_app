import'package:dartz/dartz.dart';
import 'package:flutter_seller_app/common/global_variables.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_seller_app/data/models/auth_response_model.dart';
import 'package:flutter_seller_app/data/models/request/register_request_model.dart';

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> register(
    RegisterRequestModel model) async{
      final headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
      
      final response = await http.post(
        Uri.parse('${GlobalVariables.baseUrl}/api/register'),
        headers: headers,
        body: model.toJson(),
      );

      if(response.statusCode == 200){
        return Right(AuthResponseModel.fromJson(response.body));
      }else{
        return Left(response.body);
      }
  }
}