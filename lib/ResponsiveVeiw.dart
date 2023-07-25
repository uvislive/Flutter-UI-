import 'package:flutter/material.dart';

class ResponsiveView extends StatelessWidget {
  // const ResponsiveView({Key? key}) : super(key: key);
final Widget MobileView;
final Widget DesktopView;

ResponsiveView({required this.MobileView, required this.DesktopView});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth<700){
        return MobileView;
      }
      else{
        return DesktopView;
      }
    });
  }
}
