import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_responsive_web_app_jan/responsive.dart';
import 'package:flutter_responsive_web_app_jan/view/home_screen/widgets/center_widget.dart';
import 'package:flutter_responsive_web_app_jan/view/home_screen/widgets/left_widget.dart';
import 'package:flutter_responsive_web_app_jan/view/home_screen/widgets/right_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isWeb(context) == false ? AppBar() : null,
      drawer: Drawer(
        child: LeftWidget(),
      ),
      body: Row(
        children: [
          if (Responsive.isWeb(context)) Expanded(flex: 2, child: LeftWidget()),
          Expanded(flex: 5, child: CenterWidget()),
          if (!Responsive.isMobile(context))
            Expanded(flex: 3, child: RightWidget())
        ],
      ),
    );
  }
}
