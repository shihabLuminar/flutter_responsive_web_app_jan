import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_app_jan/responsive.dart';

class RightWidget extends StatelessWidget {
  const RightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Responsive.isMobile(context) ? 100 : double.infinity,
      color: Colors.blueGrey.shade500,
      child: Text("data"),
    );
  }
}
