import 'package:animation/container_transition/details_page.dart';
import 'package:animation/widgets/card_widget.dart';
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Transition Animation'),
        centerTitle: true,
        elevation: 0,
      ),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        itemCount: 10,
        staggeredTileBuilder: (index) {
          return StaggeredTile.count(2, index.isEven ? 3 : 2);
        },
        itemBuilder: (context, index) {
          return OpenContainer(
              transitionDuration: Duration(seconds: 2),
              transitionType: ContainerTransitionType.fade,
              closedBuilder: (context, VoidCallback openContainer) {
                return CardWidget(
                  index: index,
                  onClicked: openContainer,
                );
              },
              openBuilder: (context, _) {
                return DetailsPage(
                  index: index,
                );
              });
        },
      ),
      floatingActionButton: FloatingActionButton(),
    );
  }
}

class FloatingActionButton extends StatelessWidget {
  const FloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      transitionDuration: Duration(seconds: 2),
      transitionType: ContainerTransitionType.fade,
      closedColor: Theme.of(context).primaryColor,
      closedShape: CircleBorder(),
      openBuilder: (context, _) {
        return DetailsPage();
      },
      closedBuilder: (context, openContainer) {
        return Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Theme.of(context).primaryColor),
            height: 50,
            width: 50,
            child: Icon(
              Icons.view_carousel,
              color: Colors.white,
            ));
      },
    );
  }
}
