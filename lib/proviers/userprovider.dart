import 'package:flutter/cupertino.dart';
import 'package:untitled1/models/users_model.dart';
import 'package:untitled1/services/userservice.dart';

class Userprovider extends ChangeNotifier {
  UsersModel? usermodel;
  Future<void> returnuser() async {
    try {
      usermodel = await Userservice.fefchuser();
    } catch (e) {
      throw Exception("error$e");
    }
    notifyListeners();
  }
}
