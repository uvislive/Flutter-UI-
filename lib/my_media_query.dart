import 'package:flutter/material.dart';
import 'package:instacart/ResponsiveVeiw.dart';
import 'myMobileView.dart';
import 'myDesktopView.dart';
import 'package:instacart/Responsive_layout.dart';

class MyMediaQuery extends StatefulWidget {
  const MyMediaQuery({Key? key}) : super(key: key);

  @override
  State<MyMediaQuery> createState() => _MyMediaQueryState();
}

class _MyMediaQueryState extends State<MyMediaQuery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveView(
        MobileView: MyMobileView(),
        DesktopView: MyDesktopView(),
      ),
    );
  }
}
