import 'package:flutter/material.dart';

class LeftWidget extends StatelessWidget {
  const LeftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade500,
      child: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.info),
          title: Text("Info"),
          trailing: Icon(Icons.arrow_right),
        ),
      ),
    );
  }
}
