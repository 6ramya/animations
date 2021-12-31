import 'package:animation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 220,
            child: CardWidget(
              index: index,
            ),
          );
        });
  }
}
