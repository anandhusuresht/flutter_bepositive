import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/homescreen/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Dashboard'),
      centerTitle: false,
      // actions: <Widget>[
      //   IconButton(
      //     icon: SvgPicture.asset(
      //         "C:/sdk/flutter/projects/flutter_app_home01/assets/icons/Bell.svg"),
      //     onPressed: () {},
      //   ),
      // ]
    );
  }
}
