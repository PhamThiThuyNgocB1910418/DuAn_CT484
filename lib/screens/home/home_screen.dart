import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myshop/constants.dart';
import 'package:myshop/models/Category.dart';
import 'package:myshop/models/Product.dart';
import 'package:myshop/screens/auth/auth_screen.dart';

import 'components/Pants.dart';
import 'components/Tshirt.dart';
import 'components/categories.dart';
import 'components/Dress.dart';
import 'components/Shirt.dart';
import 'components/product_card.dart';
import 'components/search_form.dart';
import 'components/section_title.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "15/2 New Texas",
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
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
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
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
            const Pants(),
            const SizedBox(height: defaultPadding),
            const Tshirt(),
            const SizedBox(height: defaultPadding),

          ],
        ),
      ),

      bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context){
                  return AuthScreen();
                })
                );
              },
            )

            //MainAxisAlignment:MainAxisAlignment.WrapAlignment.spaceBetween,
          ]),
      
    );
  }
}

