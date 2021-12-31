import 'package:animation/shared_axis_transition/shared_axis_page.dart';
import 'package:flutter/material.dart';

const String _loremIpsumParagraph =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
    'tempor incididunt ut labore et dolore magna aliqua. Vulputate dignissim '
    'suspendisse in est. Ut ornare lectus sit amet. Eget nunc lobortis mattis '
    'aliquam faucibus purus in. Hendrerit gravida rutrum quisque non tellus '
    'orci ac auctor. Mattis aliquam faucibus purus in massa. Tellus rutrum '
    'tellus pellentesque eu tincidunt tortor. Nunc eget lorem dolor sed. Nulla '
    'at volutpat diam ut venenatis tellus in metus. Tellus cras adipiscing enim '
    'eu turpis. Pretium fusce id velit ut tortor. Adipiscing enim eu turpis '
    'egestas pretium. Quis varius quam quisque id. Blandit aliquam etiam erat '
    'velit scelerisque. In nisl nisi scelerisque eu. Semper risus in hendrerit '
    'gravida rutrum quisque. Suspendisse in est ante in nibh mauris cursus '
    'mattis molestie. Adipiscing elit duis tristique sollicitudin nibh sit '
    'amet commodo nulla. Pretium viverra suspendisse potenti nullam ac tortor '
    'vitae.\n'
    '\n'
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod '
    'tempor incididunt ut labore et dolore magna aliqua. Vulputate dignissim '
    'suspendisse in est. Ut ornare lectus sit amet. Eget nunc lobortis mattis '
    'aliquam faucibus purus in. Hendrerit gravida rutrum quisque non tellus '
    'orci ac auctor. Mattis aliquam faucibus purus in massa. Tellus rutrum '
    'tellus pellentesque eu tincidunt tortor. Nunc eget lorem dolor sed. Nulla '
    'at volutpat diam ut venenatis tellus in metus. Tellus cras adipiscing enim '
    'eu turpis. Pretium fusce id velit ut tortor. Adipiscing enim eu turpis '
    'egestas pretium. Quis varius quam quisque id. Blandit aliquam etiam erat '
    'velit scelerisque. In nisl nisi scelerisque eu. Semper risus in hendrerit '
    'gravida rutrum quisque. Suspendisse in est ante in nibh mauris cursus '
    'mattis molestie. Adipiscing elit duis tristique sollicitudin nibh sit '
    'amet commodo nulla. Pretium viverra suspendisse potenti nullam ac tortor '
    'vitae';

class DetailsPage extends StatelessWidget {
  final int? index;
  const DetailsPage({Key? key, this.index = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int ind = index! + 1000;
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SharedAxisPage())),
            child: Container(
              height: 300,
              child: Image.network(
                'https://picsum.photos/id/$ind/100/100',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Random Image',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.black54, fontSize: 30),
                ),
                SizedBox(height: 10),
                Text(_loremIpsumParagraph,
                    style: TextStyle(
                        color: Colors.black54, height: 1.5, fontSize: 16))
              ],
            ),
          )
        ],
      ),
    );
  }
}
