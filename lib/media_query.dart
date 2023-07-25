import 'package:flutter/material.dart';
import 'package:instacart/Responsive_layout.dart';
import 'package:instacart/desktop_body.dart';
import 'package:instacart/mobile_body.dart';


class MediaPage extends StatefulWidget {
  const MediaPage({Key? key}) : super(key: key);

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
      final currentWidth=MediaQuery.of(context).size.width;
    return Scaffold(
     body: ResponsiveLayout(
       MobileBody: MyMobileBody(),
       DesktopBody: MyDesktopBody(),
     ),
    );
  }
}
