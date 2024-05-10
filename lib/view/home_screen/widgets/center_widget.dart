import 'package:flutter/material.dart';
import 'package:flutter_responsive_web_app_jan/responsive.dart';
import 'package:flutter_responsive_web_app_jan/view/home_screen/widgets/right_widget.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow.shade300,
      child: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(20),
              itemCount: 9,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemBuilder: (context, index) => Container(
                height: 200,
                color: Colors.black,
              ),
            ),
            if (Responsive.isMobile(context)) RightWidget()
          ],
        ),
      ),
    );
  }
}
