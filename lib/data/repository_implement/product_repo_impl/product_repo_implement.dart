import 'dart:convert';

import 'package:pet_app/domain/repository/product_repo/product_repo.dart';
import 'package:pet_app/utils/configuration.dart';
import '../../../domain/entities/product_entities/products_entities.dart';
import '../../../utils/paths.dart';
import '../../http/http.dart';

class ProductRepoImpl implements ProductRepo{
  final HTTPRequest? httpRequest;
  ProductRepoImpl({required this.httpRequest});
  @override
  Future<List<Product>> getAllProducts() async {
    try{
      Map<String, dynamic> queryParamaters= {
        'consumer_key' : Config.key,
        'consumer_secret': Config.secret
      };
      var response = await httpRequest?.get(url: paths.getAllProducts,queryParameters: queryParamaters);
      var decodedRes = json.decode(response) as List;
      return decodedRes.map((e) => Product.fromJson(e)).toList();
    }catch(e){
      return Future.error(e);
    }
  }

  @override
  Future<Product> getProductsById({int? id}) async {
    try{
      Map<String, dynamic> queryParamaters= {
        'consumer_key' : Config.key,
        'consumer_secret': Config.secret,
        'page': 1,
        'per_page': 5

      };
      var response = await httpRequest?.get(url: '${paths.getAllProducts}/$id', queryParameters: queryParamaters);
      var decodedRes = json.decode(response);
      return Product.fromJson(decodedRes);
    }catch(e){
      return Future.error(e);
    }
  }

}