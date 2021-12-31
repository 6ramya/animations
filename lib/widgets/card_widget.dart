import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  int? index;
  VoidCallback? onClicked;
  CardWidget({Key? key, this.index = 0, this.onClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int ind = index! + 1000;
    return InkWell(
      onTap: onClicked,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        NetworkImage('https://picsum.photos/id/$ind/100/100'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Random Image', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 4),
                  Text(
                    'data',
                  )
                ]),
          )
        ],
      ),
    );
  }
}
