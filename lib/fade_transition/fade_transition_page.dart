import 'package:animation/shared_axis_transition/first_page.dart';
import 'package:animation/shared_axis_transition/second_page.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class FadeTransitionPage extends StatefulWidget {
  const FadeTransitionPage({Key? key}) : super(key: key);

  @override
  State<FadeTransitionPage> createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage> {
  bool isFirstPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade Transition'),
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
            FadeThroughTransition(
              child: child,
              animation: animation,
              secondaryAnimation: secondaryAnimation,
            ),
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
