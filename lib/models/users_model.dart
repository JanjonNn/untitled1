class UsersModel {


  List<dynamic>results;
  UsersModel({required this. results,});
  factory UsersModel.fromJson(Map<String,dynamic>json)
  {
    return UsersModel(results: json["results"], );
  }
}