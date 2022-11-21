import 'package:flutter/material.dart';
import 'package:myshop/screens/details/details_screen.dart';
import 'package:myshop/screens/home/components/product_card.dart';
import 'package:myshop/screens/home/components/section_title.dart';
import 'package:myshop/screens/screens.dart';
import 'components/Pants.dart';
import 'components/Tshirt.dart';
import 'components/categories.dart';
import 'components/Dress.dart';
import 'components/Shirt.dart';
import 'package:flutter/material.dart';
import 'section_title.dart';
import 'components/search_form.dart';

class HomeScreen extends StatefulWidget {
  //
  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<void> _fetchProducts;

  @override
  void initState() {
    super.initState();
    _fetchProducts = context.read<ProductsManager>().fetchProducts(false);
  }

  @override

  //State<HomeScreen> createState() => _HomeScreenState();
  Widget build(BuildContext context) {
    final listProduct = context.read<ProductsManager>().items;
    const OutlinedBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide.none,
    );
    return FutureBuilder(
      future: _fetchProducts,
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return RefreshIndicator(
            onRefresh: () => _fetchProducts,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/menu.svg"),
                ),
                // IconButton(
                //   icon: const Icon(Icons.menu),
                //   onPressed: () {},
                // ),
                //
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // IconButton(
                    //   icon: const Icon(Icons.location_on),
                    //   onPressed: () {},
                    // ),

                    SvgPicture.asset("assets/icons/Location.svg"),
                    const SizedBox(width: defaultPadding / 2),
                    Text(
                      " Can Tho",
                      style: Theme.of(context).textTheme.subtitle2,
                    )
                  ],
                ),
                actions: [
                  // IconButton(
                  //   icon: const Icon(Icons.notifications),
                  //   onPressed: () {},
                  // ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/Notification.svg"),
                  )
                ],
              ),
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                    const Text(
                      "best Outfits for you",
                      style: TextStyle(fontSize: 18),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: searchForm(),
                    ),
                    const Categories(),
                    const SizedBox(height: defaultPadding),
                    const Dress(),
                    const SizedBox(height: defaultPadding),
                    const Shirt(),
                    // const Pants(),
                    // const SizedBox(height: defaultPadding),
                    // const Tshirt(),
                    // const SizedBox(height: defaultPadding),
                  ],
                ),
              ),
              bottomNavigationBar: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.home),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const UserProductsScreen();
                        }));
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.shopping_cart),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const CartScreen();
                        }));
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.logout),
                      onPressed: () {
                        context.read<AuthManager>().logout();
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const AuthScreen();
                          },
                          // onPressed: () {
                          //   Navigator.push(context, MaterialPageRoute(builder: (context) {
                          //     return const AuthScreen();
                          //   }
                        ));
                      },
                    )

                    //MainAxisAlignment:MainAxisAlignment.WrapAlignment.spaceBetween,
                  ]),
            ));
      }),
    );
  }
}

class Dress extends StatelessWidget {
  const Dress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listProduct = context.read<ProductsManager>().items;

    return Column(
      children: [
        SectionTitle(
          title: "Dress",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              listProduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultBorderRadius),
                child: ProductCard(
                  image: listProduct[index].image,
                  title: listProduct[index].title,
                  price: listProduct[index].price,
                  id: listProduct[index].id!,
                  //bgColor: demo_product[index].bgColor,
                  // Color(0xFFEFEFF2),
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: listProduct[index],
                          ),
                        ));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Shirt extends StatelessWidget {
  const Shirt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listProduct = context.read<ProductsManager>().items;

    return Column(
      children: [
        SectionTitle(
          title: "Shirt",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              listProduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: defaultBorderRadius),
                child: ProductCard(
                  image: listProduct[index].image,
                  title: listProduct[index].title,
                  price: listProduct[index].price,
                  id: listProduct[index].id!,
                  //bgColor: demo_product[index].bgColor,
                  // Color(0xFFEFEFF2),
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: listProduct[index],
                          ),
                        ));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

// class Pants extends StatelessWidget {
//   const Pants({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SectionTitle(
//           title: "Pants",
//           pressSeeAll: () {},
//         ),
//       ],
//     );
//   }
// }

// class Shirt extends StatelessWidget {
//   const Shirt({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final listProduct = context.read<ProductsManager>().items;

//     return Column(
//       children: [
//         SectionTitle(
//           title: "Shirt",
//           pressSeeAll: () {},
//         ),
//       ],
//     );
//   }
// }

// class Tshirt extends StatelessWidget {
//   const Tshirt({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SectionTitle(
//           title: "Tshirt",
//           pressSeeAll: () {},
//         ),
//       ],
//     );
//   }
// }
