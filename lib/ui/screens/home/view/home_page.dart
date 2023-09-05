import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_app/ui/screens/home/bloc/product_bloc.dart';
import 'package:pet_app/utils/extension_methods.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: BlocProvider.of<ProductCubit>(context),
        builder: (context, state){
          return SizedBox(
            width: context.getScreenWidth,
            height: context.getScreenHeight,
            child: const Center(
              child: Text('home screen'),
            ),
          );
        },
      )
    );
  }
}
