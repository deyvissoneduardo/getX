import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/state_manager.dart';
import 'package:getx_demo/models/product_model.dart';

class GlobalController extends GetxController {
  List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  @override
  void onInit() {
    super.onInit();
    // ignore: avoid_print
    print('inicio global controller');
    _loadProduts();
  }

  Future<void> _loadProduts() async {
    final String productsStrings =
        await rootBundle.loadString('assets/products.json');

    _products = (jsonDecode(productsStrings) as List)
        .map((e) => ProductModel.fromJson(e))
        .toList();
    // ignore: avoid_print
    print('carregando lista de produtos');
    update(['products']);
  }
}
