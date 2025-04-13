import 'package:dio/dio.dart';

import '../models/user_function_model.dart';

class loginservice {
  static Dio dio = Dio();
  static Future<UserFunctionModel> login_service(
    String Name,
    String password,
  ) async {
    try {
      Response response = await dio
          .post("https://elsewedyteam.runasp.net/api/Login/CheckUser", data: {
        {"Name": Name, "password": password}
      });
      if (response.statusCode == 200) {
        return UserFunctionModel.fromJson(response.data);
      } else {
        throw Exception("error");
      }
    } catch (e) {
      throw Exception("error$e");
    }
  }
}

class signupservice {
  static Dio dio = Dio();
  static Future<UserFunctionModel> signup_service(
      String Name, String password, String Phone, String Email) async {
    try {
      Response response = await dio
          .post("https://elsewedyteam.runasp.net/api/Register/AddUser", data: {
        {
          "Name": Name,
          "password": password,
          "Email": Email,
          "Phone":Phone,
        }
      });
      if (response.statusCode == 200) {
        return UserFunctionModel.fromJson(response.data);
      } else {
        throw Exception("error");
      }
    } catch (e) {
      throw Exception("error$e");
    }
  }
}
