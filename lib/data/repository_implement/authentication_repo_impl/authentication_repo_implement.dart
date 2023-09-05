import 'dart:convert';
import 'package:pet_app/data/http/http.dart';
import 'package:pet_app/domain/entities/authentication_entities/login_user_entity.dart';
import 'package:pet_app/domain/entities/authentication_entities/signup_user_entity.dart';
import 'package:pet_app/utils/configuration.dart';
import 'package:pet_app/utils/paths.dart';

import '../../../domain/repository/authentication_repo/authentication_repo.dart';

class AuthenticationRepoImpl implements AuthenticationRepo{
  final HTTPRequest? httpRequest;
  AuthenticationRepoImpl({required this.httpRequest});
 
  @override
  Future<SignUpUser> signUpUser({String? email, String? firstName, String? lastName, String? password}) async {
    try{
      String authToken = base64.encode(utf8.encode('${Config.key}:${Config.secret}'));
     var body = {
                "email":email,
                "first_name": firstName,
                "last_name": lastName,
                "password": password,
                "username": email,
              };
      var response = await httpRequest?.post(url: paths.customerSignup,body: body,token: 'Basic $authToken');
      return SignUpUser.fromJson(json.decode(response) ?? {});
    }catch(e){
      return Future.error(e);
    }
  }

  @override
  Future<LoginUser> loginUser({String? email, String? password}) async {
    try{
      var body = {
        "username": email,
        "password": password
      };
      var response = await httpRequest?.post(url: paths.customerLogin,body: body);
      return LoginUser.fromJson(json.decode(response) ?? {});
    }catch(e){
      return Future.error(e);
    }
  }

}