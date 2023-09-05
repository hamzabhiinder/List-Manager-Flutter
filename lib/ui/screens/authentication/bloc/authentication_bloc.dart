import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/data/http/exception_handler.dart';
import 'package:pet_app/ui/screens/authentication/bloc/authentication_state.dart';
import 'package:pet_app/utils/configuration.dart';

import '../../../../domain/repository/authentication_repo/authentication_repo.dart';

class AuthenticationCubit extends Cubit<AuthenticationState>{
  final AuthenticationRepo authenticationRepo;

  AuthenticationCubit(this.authenticationRepo) : super(AuthenticationState.init());

  Future<void> signupUser({String? firstName, String? lastName, String? email, String? password})async{
    try{
      emit(state.copyWith(signUpLoading: true));
      var userSignup = await authenticationRepo.signUpUser(email: email,firstName: firstName,lastName: lastName, password: password);
      emit(state.copyWith(signUpLoading: false, signUpSuccessfull: true));
    }
    catch(e){
      ExceptionHandler().handleException(e);
      emit(state.copyWith(signUpLoading: false, error: true,errorText: e.toString()));
    }
  }

  Future<void> loginUser({String? email, String? password})async{
    try{
      emit(state.copyWith(loginLoading: true));
      // WooCommerce woocommerce = WooCommerce(
      //     baseUrl: 'https://clawset.co/en',
      //     consumerKey: 'ck_14086580d7c820a26e6ede1d7461dd01895269cb',
      //     consumerSecret: 'cs_7bfa934332af1062ac006eb7acfdf18c3243ecce');
      // final token = await woocommerce.authenticateViaJWT(username: email, password: password);
      // // final customer = await woocommerce.loginCustomer(username: email!, password: password!);
      // print('token: $token');
      //
      //
      // final myProducts = await woocommerce.getProducts();
      //
      // final myCart = await woocommerce.addToMyCart(quantity: '2', itemId: myProducts[0].id.toString(), token: token);
      //
      //
      // print('token: $token');
      var userLogin = await authenticationRepo.loginUser(email: email, password: password);
      // userLogin.data.token;
      Config.authorization = userLogin.data?.token ?? '';
      emit(state.copyWith(loginLoading: false,loginSuccessfull: true));
    }
    catch(e){
      ExceptionHandler().handleException(e);
      emit(state.copyWith(loginLoading: false, error: true,errorText: e.toString()));
    }
  }

  removeError(){
    emit(state.copyWith(error: false,errorText: '', loginSuccessfull: false, signUpSuccessfull: false));
  }

}