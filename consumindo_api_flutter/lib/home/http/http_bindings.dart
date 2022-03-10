import 'package:consumindo_api_flutter/home/http/http_controller.dart';
import 'package:consumindo_api_flutter/home/http/repository/user_http_repository.dart';
import 'package:consumindo_api_flutter/repository/i_user-repository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRpository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
