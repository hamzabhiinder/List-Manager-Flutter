import '../../entities/cart_entities/CartEntity.dart';

abstract class CartRepo{
  Future<CartEntity> fetchCart({required int userId});
  Future addToCartItem({required int itemId, required int quantity});
  Future removeCartItem({required String productKey});
}