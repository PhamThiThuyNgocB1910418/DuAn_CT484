import 'package:flutter/material.dart';
import 'package:myshop/models/Product.dart';
import 'package:myshop/screens/products/edit_product_screen.dart';
import 'package:myshop/screens/products/user_products_list_tile.dart';
import 'package:myshop/screens/shared/app_drawer.dart';
import 'package:provider/provider.dart';
import 'products_manager.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';
  const UserProductsScreen({super.key});

  Future<void> _refreshProducts(BuildContext context) async {
    await context.read<ProductsManager>().fetchProducts(true);
  }

  @override
  Widget build(BuildContext context) {
    // final productsManager = ProductsManager();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 165, 221),
        title: const Text('Quản lí sản phẩm'),
        actions: <Widget>[
          buildAddButton(
            context,
          )
        ],
        // title: const Text('Your Products'),
        // actions: <Widget>[
        //   buildAddButton(context),
        // ],
      ),
      //

      //drawer: const AppDrawer(),

      // body: RefreshIndicator(
      //   onRefresh: () async => print('refresh products'),
      //   child: buildUserProductListView(),
      // ),

      //LAB4
      body: FutureBuilder(
        future: _refreshProducts(context),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return RefreshIndicator(
            onRefresh: () => _refreshProducts(context),
            child: buildUserProductListView(),
          );
        },
      ),
    );
  }

  Widget buildUserProductListView() {
    return Consumer<ProductsManager>(builder: (ctx, productsManager, child) {
      return ListView.builder(
        itemCount: productsManager.itemCount,
        itemBuilder: (ctx, i) => Column(
          children: [
            UserProductListTile(
              productsManager.items[i],
            ),
            //const Divider(),
          ],
        ),
      );
    });
  }
  // Widget buildUserProductListView(ProductsManager productsManager) {
  //   return ListView.builder(
  //     itemCount: productsManager.itemCount,
  //     itemBuilder: (ctx, i) => Column(
  //       children: [
  //         UserProductListTile(
  //           productsManager.items[i],
  //         ),
  //         const Divider(),
  //       ],
  //     ),
  //   );
  // }

  Widget buildAddButton(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add),
      color: Colors.white,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditProductScreen(null),
            ));
      },
    );
  }
}
