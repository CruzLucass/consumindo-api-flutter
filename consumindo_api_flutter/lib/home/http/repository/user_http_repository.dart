import 'dart:convert';

import 'package:consumindo_api_flutter/model/user_model.dart';
import 'package:consumindo_api_flutter/repository/i_user-repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRpository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    var url = Uri.parse("https://localhost8080/usuario");
    final response = await http.get(url);
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }
}
