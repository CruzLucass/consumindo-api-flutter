import 'package:consumindo_api_flutter/model/user_model.dart';

abstract class IUserRpository {
  Future<List<UserModel>> findAllUsers();
}
