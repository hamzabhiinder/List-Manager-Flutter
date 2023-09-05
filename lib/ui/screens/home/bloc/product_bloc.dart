import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/data/http/exception_handler.dart';
import 'package:pet_app/domain/repository/product_repo/product_repo.dart';
import 'package:pet_app/ui/screens/home/bloc/product_state.dart';

class ProductCubit extends Cubit<ProductState>{
  final ProductRepo productRepo;

  ProductCubit(this.productRepo) : super(ProductState.init());

  Future<void> getProducts()async{
    try{
      emit(state);
      var products = await productRepo.getAllProducts();
      // var productById = await productRepo.getProductsById(id: products[0].id!.toInt());

      emit(state);
    }
    catch(e){
      ExceptionHandler().handleException(e);
      emit(state);
    }
  }
}