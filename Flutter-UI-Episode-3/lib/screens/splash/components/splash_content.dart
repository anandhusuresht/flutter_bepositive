import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(flex: 3),
        // Text(
        //   "TOKOTO",
        //   style: TextStyle(
        //     fontSize: getProportionateScreenWidth(36),
        //     color: kPrimaryColor,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // Text(
        //   text,
        //   textAlign: TextAlign.center,
        // ),
        // AssetImage bepoasset = AssetImage('assets/images/bepo.png')
        // Image(
        //   image: 'assets/images/bepo.png',
        //   height: getProportionateScreenHeight(100),
        //   width: getProportionateScreenWidth(80),
        // )
        new Image.asset(
          'assets/images/bepo.png',
          height: getProportionateScreenHeight(200),
          width: getProportionateScreenWidth(160),
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
