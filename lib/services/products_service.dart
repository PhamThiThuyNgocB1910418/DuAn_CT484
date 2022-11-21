import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myshop/models/Product.dart';
import '../models/auth_token.dart';

import 'firebase_service.dart';

class ProductsService extends FirebaseService {
  ProductsService([AuthToken? authToken]) : super(authToken);

  Future<bool> updateProduct(Product product) async {
    try {
      final url =
          Uri.parse('$databaseUrl/products/${product.id}.json?auth=$token');
      final response = await http.patch(
        url,
        body: json.encode(product.toJson()),
      );
      if (response.statusCode != 200) {
        throw Exception(json.decode(response.body)['error']);
      }
      return true;
    } catch (error) {
      print(error);
      return false;
    }
  }

  //save favorite status
  Future<bool> saveFavoriteStatus(Product product) async {
    try {
      final url = Uri.parse(
          '$databaseUrl/userFavorites/$userId/${product.id}.json?auth=$token');
      final response = await http.put(
        url,
        // body: json.encode(
        //   product.isFavorite,
        // ),
      );
      if (response.statusCode != 200) {
        throw Exception(json.decode(response.body)['error']);
      }

      return true;
    } catch (error) {
      print(error);
      return false;
    }
  }

  Future<bool> deleteProduct(String id) async {
    try {
      final url = Uri.parse('$databaseUrl/products/$id.json?auth=$token');
      final response = await http.delete(url);

      if (response.statusCode != 200) {
        throw Exception(json.decode(response.body)['error']);
      }
      return true;
    } catch (error) {
      print(error);
      return false;
    }
  }

  Future<List<Product>> fetchProducts([bool filterByUser = false]) async {
    final List<Product> products = [];

    try {
      print(token);
      final filters =
          filterByUser ? 'orderBy="creatorId"&equalTo="$userId"' : '';
      final productsUrl =
          Uri.parse('$databaseUrl/products.json?auth=$token&$filters');
      final response = await http.get(productsUrl);
      final productsMap = json.decode(response.body) as Map<String, dynamic>;
      if (response.statusCode != 200) {
        print(" ${productsMap['error']}");
        return products;
      }
      productsMap.forEach((productId, product) {
        products.add(
          Product.fromJson({
            'id': productId,
            ...product,
          }),
        );
      });
      return products;
    } catch (error) {
      print("${error}");
      return products;
    }
  }

  Future<Product?> addProduct(Product product) async {
    try {
      print(token);
      final url = Uri.parse('$databaseUrl/products.json?auth=$token');
      print(url);
      final response = await http.post(
        url,
        body: json.encode(
          product.toJson()
            ..addAll({
              'creatorId': userId,
            }),
        ),
      );
      print(response.statusCode);
      if (response.statusCode != 200) {
        throw Exception(json.decode(response.body)['error']);
      }
      print(response.body);
      return product.copyWith(
        id: json.decode(response.body)['name'],
      );
    } catch (error) {
      print(error);
      return null;
    }
  }
}
