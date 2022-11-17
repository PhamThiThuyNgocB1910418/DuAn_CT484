import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';

import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
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
      body: Padding(
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
            )],
        ),
      ),
    );
  }
}

// class searchForm extends StatelessWidget {
//   const searchForm({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: TextFormField(
//         decoration: InputDecoration(
//           hintText: "Search items...",
//           filled: true,
//           fillColor: Colors.white,
//           border: outlineInputBorder,
//           enabledBorder: outlineInputBorder,
//           focusedBorder: outlineInputBorder,
//           prefixIcon: Padding(
//             padding: const EdgeInsets.all(12),
//             child: SvgPicture.asset("assets/icons/Search.svg"),
//           ),
//           suffixIcon: SizedBox(
//             height: 48,
//             width: 48,
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: primaryColor,
//                   shape: const RoundedRectangleBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(defaultBorderRadius)
//                     )
//               ),
//             child: SvgPicture.asset("assets/icons/Filter.svg"),
//           ),
//         ),
//       ))
//     ),
//     );
  
//   }
// }

// const outlineInputBorder = OutlineInputBorder(
//   borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
//   borderSide: BorderSide.none,
// );
