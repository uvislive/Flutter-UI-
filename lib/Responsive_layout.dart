import 'package:flutter/material.dart';


class ResponsiveLayout extends StatelessWidget {
  final Widget MobileBody;
  final Widget DesktopBody;
  ResponsiveLayout({required this.MobileBody,required this.DesktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.maxWidth<600){
          return MobileBody;
        }
        else{
          return DesktopBody;
        }
      },
    );
  }
}
