import 'package:flutter/material.dart';
import 'package:flutter_read_more/flutter_read_more.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Read More Text',
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Read More Text',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: DefaultTextStyle.merge(
        style: const TextStyle(
          fontSize: 16.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                key: Key('showMore'),
                padding: EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                  trimLines: 2,
                  preDataText: "AMANDA",
                  preDataTextStyle: TextStyle(fontWeight: FontWeight.w500),
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.line,
                  trimCollapsedText: '...Show more',
                  trimExpandedText: ' show less',
                ),
              ),
              const Divider(
                color: Color(0xFF167F67),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'Flutter(https://flutter.dev/) has its own UI components, along with an engine to render them on both the Android and iOS platforms. Most of those UI components, right out of the box, conform to the guidelines of Material Design.',
                  trimLines: 3,
                  style: const TextStyle(color: Colors.black),
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.line,
                  trimCollapsedText: '...Expand',
                  trimExpandedText: ' Collapse ',
                  onLinkPressed: (url) {
                    debugPrint(url);
                  },
                ),
              ),
              const Divider(
                color: Color(0xFF167F67),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: ReadMoreText(
                  'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
                  trimLines: 2,
                  style: TextStyle(color: Colors.black),
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.line,
                  trimCollapsedText: '...Read more',
                  trimExpandedText: ' Less',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
