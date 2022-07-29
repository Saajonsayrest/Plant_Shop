import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/title_with_more_btn.dart';

import '../../../constants.dart';
import 'images_and_icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(title: "Crassula", country: "India", price: 400),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 85,
                child: TextButton(
                  // style: TextButton.styleFrom(
                  //   backgroundColor: kPrimaryColor,
                  //   primary: Colors.white,
                  // ),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20)),
                    ),
                  ),

                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: Text("Description"),
              ))
            ],
          )
        ],
      ),
    );
  }
}
