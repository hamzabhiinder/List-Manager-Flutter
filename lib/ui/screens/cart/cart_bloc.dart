import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/domain/repository/cart_repo/cart_repo.dart';
import 'package:pet_app/ui/screens/cart/cart_state.dart';


class CartCubit extends Cubit<CartState>{
  final CartRepo productRepo;

  CartCubit(this.productRepo) : super(CartState.init());

  fetchCart()async{
    await productRepo.fetchCart(userId: 459);
  }

  addToCartItem(){}

  removeCartItem()async{
    await productRepo.removeCartItem(productKey: '2327dbb832457d91efec596e6a48a696');
  }


}