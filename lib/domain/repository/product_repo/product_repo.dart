import '../../entities/product_entities/products_entities.dart';

abstract class ProductRepo{
  Future<List<Product>> getAllProducts();
  Future<Product> getProductsById({int? id});
}