import 'package:alert_dialouge/alert.dart';
import 'package:alert_dialouge/flexproperty.dart';
import 'package:alert_dialouge/home.dart';
import 'package:alert_dialouge/listviwbuild.dart';
import 'package:alert_dialouge/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: prefer_final_fields
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: PageView(
            controller: _controller,
            children: [
              CustomAlert(),
              Alert(),
              Ajaira(),
              FlexProperty(),
              ListViewBuild(),
            ],
          ),
        ));
  }
}
