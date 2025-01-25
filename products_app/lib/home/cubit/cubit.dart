import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_camp/core/data/data_sourse/api_manger.dart';
import 'package:route_camp/home/cubit/states.dart';
import 'package:route_camp/model/product_item.dart';

class ProductCubit extends Cubit<ProductStates> {
  ProductCubit() : super(LoadingProductState());

  static ProductCubit get(context) => BlocProvider.of(context);

  List<ProductItem> _productsList = [];

  List<ProductItem> get productsList => _productsList;

  Future<void> getProductsList() async {
    try {
      _productsList = await ApiManger.FeachProductsList();
      emit(SuccessProductState());
    } catch (error) {
      emit(ErrorProductState());
    }
  }
}
