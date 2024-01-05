import 'package:dartz/dartz.dart';
import 'package:flutter_seller_app/common/global_variables.dart';
import 'package:flutter_seller_app/data/models/product_response_model.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDatasource {
  Future<Either<String, ProductResponseModel>> getProducts() async {
    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    final response = await http.get(
      Uri.parse('${GlobalVariables.baseUrl}/api/product'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return Right(ProductResponseModel.fromJson(response.body));
    } else {
      return Left("Server Error");
    }
  }
}
