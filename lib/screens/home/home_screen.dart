import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myshop/constants.dart';
import 'package:myshop/models/Category.dart';
import 'package:myshop/models/Product.dart';

import 'components/categories.dart';
import 'components/new_arrival.dart';
import 'components/popular.dart';
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
            const NewArrival(),
            const SizedBox(height: defaultPadding),
            const Popular(),
          ],
        ),
      ),
    );
  }
}

// class NewArrival extends StatelessWidget {
//   const NewArrival({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SectionTitle(
//           title: "New Arrival",
//           pressSeeAll: () {},
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: List.generate(
//               demo_product.length,
//               (index) => Padding(
//                 padding:
//                     const EdgeInsets.only(left: defaultBorderRadius),
//                 child: ProductCard(
//                   image: demo_product[index].image,
//                   title: demo_product[index].title,
//                   price: demo_product[index].price,
//                   bgColor: demo_product[index].bgColor,
//                   // Color(0xFFEFEFF2),
//                   press: () {},
//                 ),
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }


// class Popular extends StatelessWidget {
//   const Popular({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SectionTitle(
//           title: "Popular",
//           pressSeeAll: () {},
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: List.generate(
//               demo_product.length,
//               (index) => Padding(
//                 padding:
//                     const EdgeInsets.only(left: defaultBorderRadius),
//                 child: ProductCard(
//                   image: demo_product[index].image,
//                   title: demo_product[index].title,
//                   price: demo_product[index].price,
//                   bgColor: demo_product[index].bgColor,
//                   // Color(0xFFEFEFF2),
//                   press: () {},
//                 ),
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }


