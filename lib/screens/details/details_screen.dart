import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myshop/constants.dart';
import 'package:myshop/models/Product.dart';

import 'components/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        const SizedBox(width: defaultPadding),
                        Text(
                          "\$" + product.price.toString(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                          "Ngày nay việc tìm kiếm cho mình một bộ trang phục phù hợp và đẹp thì rất dễ vì trang phục ngày nay rất phong phú và đa dạng và được trưng bán ở khắp các cửa hàng trên những con đường ta thường đi hằng ngày . Nhưng không thể nói đến việc những website thương mại điện tử cũng được tạo ra nhằm phục vụ cho việc buôn bán và mua hàng của người dùng được thuận tiện hơn."),
                    ),
                    const Text(
                      "Colors",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Row(
                      children: [
                        ColorDot(
                          color: const Color(0xFFBEEBEA),
                          isActive: false,
                          press: () {},
                        ),
                        ColorDot(
                          color: Color.fromARGB(255, 255, 165, 221),
                          isActive: true,
                          press: () {},
                        ),
                        ColorDot(
                          color: const Color(0xFFF4E5C3),
                          isActive: false,
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding * 1.5),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: const StadiumBorder(),
                          ),
                          child: const Text("Add to cart"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
