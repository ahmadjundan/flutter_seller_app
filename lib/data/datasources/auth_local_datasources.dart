import 'package:flutter_seller_app/data/models/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasoruce {
  Future<bool> saveAuthData(AuthResponseModel model) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.setString('auth', model.toJson());
    return result;
  }

    Future<bool> removeAuthData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final result = prefs.remove('auth');
    return result;
  }

  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final authJson = prefs.getString('auth') ?? '';
    final authModel = AuthResponseModel.fromJson(authJson);
    return authModel.token;
  }

  Future<bool> isLogin() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final authJson = prefs.getString('auth') ?? '';
    return authJson.isNotEmpty;
  }
}