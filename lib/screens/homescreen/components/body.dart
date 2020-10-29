import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'package:flutter_app/screens/homescreen/components/components/fab1.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // FAB(),
        OptionList(),
        // FAB1(),
      ],
    );
  }

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter Fab Menu',
  //     theme: ThemeData(
  //       primarySwatch: Colors.blue,
  //     ),
  //     home: FAB1(),
  //   );
  // }
}

class OptionList extends StatefulWidget {
  @override
  _OptionListState createState() => _OptionListState();
}

class _OptionListState extends State<OptionList> {
  int selectedIndex = 0;
  List options = ['Data', 'Reports', 'Sales', 'Tools'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: options.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
                left: kDefaultPadding,
                right: index == options.length - 1 ? kDefaultPadding : 0),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
                color: index == selectedIndex
                    ? Colors.white.withOpacity(0.4)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(6)),
            child: Text(
              options[index],
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
