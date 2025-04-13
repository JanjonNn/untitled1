
class UserFunctionModel {


  bool status;
  String message;
  UserFunctionModel({required this.status,required this.message});
  factory UserFunctionModel.fromJson(Map<String,dynamic>json)
  {
    return UserFunctionModel(status: json["status"], message: json["message"]);
  }
}