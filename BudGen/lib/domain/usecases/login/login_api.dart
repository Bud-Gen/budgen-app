
import 'package:BudGen/domain/api_services/api_handler.dart';
import 'package:BudGen/domain/entities/user.dart';

class LoginApi {
  Future<bool> call(UserCredentials user) async {
    Map<String, dynamic> resp = await login(user);
    return resp["status"];
  }
}
