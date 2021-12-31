import 'package:animation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
        itemCount: 10,
        itemBuilder: (context, index) {
          return CardWidget(index: index);
        });
  }
}
