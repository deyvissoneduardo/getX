import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controller/global_controller.dart';
import 'package:getx_demo/models/product_model.dart';

class ProducList extends StatelessWidget {
  const ProducList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final controller =  Get.find<GlobalController>();
    return GetBuilder<GlobalController>(
      id: 'products',
      builder: (_) => ListView.builder(
        itemCount: _.products.length,
        itemBuilder: (__, index) {
          final ProductModel product = _.products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('R\$ ${product.price}'),
            trailing: IconButton(
                icon: Icon(
                  Icons.favorite_outline,
                  color: product.isFavorite ? Colors.blueAccent : Colors.grey,
                ),
                onPressed: () => _.onFavorite(index, !product.isFavorite)),
          );
        },
      ),
    );
  }
}
