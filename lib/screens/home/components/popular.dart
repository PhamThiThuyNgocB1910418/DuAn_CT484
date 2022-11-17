import 'package:flutter/material.dart';
import 'package:myshop/screens/home/components/product_card.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import 'section_title.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding:
                    const EdgeInsets.only(left: defaultBorderRadius),
                child: ProductCard(
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  // Color(0xFFEFEFF2),
                  press: () {},
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}