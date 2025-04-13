
import 'package:dio/dio.dart';
import 'package:untitled1/models/users_model.dart';

class Userservice {
  static Dio dio = Dio();
  static Future<UsersModel> fefchuser(
      ) async {
    try {
      Response response = await dio
          .get("https://randomuser.me/api/?results=50" );
      if (response.statusCode == 200) {
        return UsersModel.fromJson(response.data);
      } else {
        throw Exception("error");
      }
    } catch (e) {
      throw Exception("error$e");
    }
  }
}