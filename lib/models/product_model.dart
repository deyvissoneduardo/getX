import 'package:flutter/widgets.dart';

class ProductModel {
  final int id;
  final String name, description;
  final double price, rate;
  // bool isFavorite = false;

  ProductModel({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.rate,
  });

  static ProductModel fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['Product ID'],
      name: json['Name'],
      description: json['Description'],
      price: json['Price'].toDouble(),
      rate: json['Rating Avg'].toDouble(),
    );
  }
}
