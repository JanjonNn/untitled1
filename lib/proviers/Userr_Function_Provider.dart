import 'package:flutter/cupertino.dart';

import '../models/user_function_model.dart';
import '../services/user_function_service.dart';

class loginProvider extends ChangeNotifier {
  UserFunctionModel? model;
  Future<void>loginprovider(String Name,
      String password,)async
  {
    try
        {
           model = await loginservice.login_service(Name, password);


        }
        catch(e){
      throw Exception("error$e");
        }
        notifyListeners();
  }
}
class signupProvider extends ChangeNotifier {
  UserFunctionModel? model;
  Future<void>signupprovider(String Name,
      String password,
      String Phone,
      String Email,

      )async
  {
    try
    {
      model = await signupservice.signup_service(Name, password,Phone,Email);


    }
    catch(e){
      throw Exception("error$e");
    }
    notifyListeners();
  }
}