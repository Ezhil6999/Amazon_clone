import 'package:amazon_clone/constants/global_variable.dart';
import 'package:amazon_clone/models/user.dart';
import 'package:http/http.dart' as http;

class AuthServices{
  void signUpUser({
    required String context,
    required String email,
    required String password,
    required String name,
  }) async {
    User user =new User()
    http.Response response = await http.post(
      Uri.parse('$uri/api/signup'),
      body: User(),
      headers : <String,String>{
        'Content-Type' : 'application/json; charset=UTF-8',
      },
    );
  }
}