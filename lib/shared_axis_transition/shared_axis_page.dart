import 'package:animation/shared_axis_transition/first_page.dart';
import 'package:animation/shared_axis_transition/second_page.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class SharedAxisPage extends StatefulWidget {
  const SharedAxisPage({Key? key}) : super(key: key);

  @override
  State<SharedAxisPage> createState() => _SharedAxisPageState();
}

class _SharedAxisPageState extends State<SharedAxisPage> {
  bool isFirstPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Axis'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [Expanded(child: buildCard()), buildButtons()],
      ),
    );
  }

  Widget buildCard() {
    return PageTransitionSwitcher(
        duration: Duration(milliseconds: 3000),
        reverse: isFirstPage,
        transitionBuilder: (child, animation, secondaryAnimation) =>
            SharedAxisTransition(
                child: child,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal),
        child: isFirstPage ? FirstPage() : SecondPage());
  }

  Widget buildButtons() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: isFirstPage ? null : togglePage,
                child: Text('BACK')),
            ElevatedButton(
                onPressed: isFirstPage ? togglePage : null, child: Text('NEXT'))
          ],
        ));
  }

  void togglePage() => setState(() {
        isFirstPage = !isFirstPage;
        print(isFirstPage);
      });
}
