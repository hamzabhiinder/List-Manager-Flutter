import 'dart:convert';

import 'package:pet_app/data/http/http.dart';
import 'package:pet_app/domain/repository/cart_repo/cart_repo.dart';

import '../../../domain/entities/cart_entities/CartEntity.dart';
import '../../../utils/configuration.dart';
import '../../../utils/paths.dart';

class CartRepoImpl implements CartRepo{
  final HTTPRequest? httpRequest;

  CartRepoImpl({required this.httpRequest});

  @override
  Future<CartEntity> fetchCart({required int userId}) async {
    try{
      Map<String, dynamic> queryParamaters= {
        'user_id' : userId
      };
      var response = await httpRequest?.get(url: paths.getCart,queryParameters: queryParamaters,token: 'Bearer ${Config.authorization}');
      var decodedRes = json.decode(response);
      return CartEntity.fromJson(decodedRes);
    }catch(e){
      return Future.error(e);
    }
  }

  @override
  Future addToCartItem({required int itemId, required int quantity}) {
    // TODO: implement addToCartItem
    throw UnimplementedError();
  }

  @override
  Future removeCartItem({required String productKey}) async {
    try{
      var headers = {
        'Nonce' : 'ea95256832'
      };
      var response = await httpRequest?.post(url: '${paths.removeCart}?key=$productKey',header: headers,token: 'Bearer ${Config.authorization}');
      var decodedRes = json.decode(response);
      return CartEntity.fromJson(decodedRes);
    }catch(e){
      return Future.error(e);
    }
  }

}