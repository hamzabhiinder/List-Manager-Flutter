import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/data/http/http.dart';
import 'package:pet_app/data/repository_implement/authentication_repo_impl/authentication_repo_implement.dart';
import 'package:pet_app/data/repository_implement/cart_repo_impl/cart_repo_implement.dart';
import 'package:pet_app/domain/repository/cart_repo/cart_repo.dart';
import 'package:pet_app/ui/screens/authentication/bloc/authentication_bloc.dart';
import 'package:pet_app/ui/screens/cart/cart_bloc.dart';
import 'package:pet_app/ui/screens/home/bloc/product_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pet_app/ui/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:pet_app/ui/screens/onboarding/view/onboarding_screen.dart';
import 'data/repository_implement/product_repo_impl/product_repo_implement.dart';
import 'domain/repository/authentication_repo/authentication_repo.dart';
import 'domain/repository/product_repo/product_repo.dart';


final GetIt getIt = GetIt.instance;

void main() {
  // HTTPRequest().post(url: 'url');
  getIt.registerSingleton(ResponseHandler());
  getIt.registerSingleton(HTTPRequest());
  getIt.registerSingleton<AuthenticationRepo>(AuthenticationRepoImpl(httpRequest: getIt()));
  getIt.registerSingleton<ProductRepo>(ProductRepoImpl(httpRequest: getIt()));
  getIt.registerSingleton<CartRepo>(CartRepoImpl(httpRequest: getIt()));

  runApp( MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => OnboardingCubit()),
        BlocProvider(create: (BuildContext context) => AuthenticationCubit(getIt())),
        BlocProvider(create: (BuildContext context) => ProductCubit(getIt())..getProducts()),
        BlocProvider(create: (BuildContext context) => CartCubit(getIt())..removeCartItem()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFAC4FC6),
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFFAC4FC6),
            onPrimary: Color(0xFFAC4FC6),
            secondary: Color(0xFFAC4FC6),
            onSecondary: Color(0xFFAC4FC6),
            error: Color(0xFFAC4FC6),
            onError: Color(0xFFAC4FC6),
            background: Colors.white,
            onBackground: Color(0xFFAC4FC6),
            surface: Color(0xFFAC4FC6),
            onSurface: Color(0xFFAC4FC6)),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: OnboardingScreen(),
      ),
    );
  }
}

// https://shibuiyusuke.medium.com/measuring-distance-with-arcore-6eb15bf38a8f


