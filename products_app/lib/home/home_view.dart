import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_camp/home/cubit/cubit.dart';
import 'package:route_camp/home/cubit/states.dart';
import 'package:route_camp/product_item_view.dart';

class HomeView extends StatefulWidget {
  HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
            ),
            body: BlocProvider(
              create: (context) => ProductCubit()..getProductsList(),
              child: BlocConsumer<ProductCubit, ProductStates>(
                builder: (context, state) {
                  var cubit = ProductCubit.get(context);

                  return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: .6,
                          mainAxisSpacing: 20,
                          crossAxisCount: 2),
                      itemCount: cubit.productsList.length,
                      itemBuilder: (context, index) {
                        // final product = product[index];
                        return ProductItemView(
                            productItem: cubit.productsList[index]);
                      });
                },
                listener: (context, state) {},
              ),
            )));
  }
}
