import 'package:alert_dialouge/flexproperty.dart';
import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _new = List<String>.generate(25, (index) => 'Tawhid $index');

    List<String> _alert = [
      'One',
      'Two',
      'Three',
      'Four',
      'One',
      'Two',
      'Three',
      'Four',
      'One',
      'Two',
      'Three',
      'Four',
      'One',
      'Two',
      'Three',
      'Four',
      'One',
      'Two',
      'Three',
      'Four',
      'One',
      'Two',
      'Three',
      'Four',
      'One',
      'Two',
      'Three',
      'Four',
      'One',
      'Two',
      'Three',
      'Four'
    ];
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            Text(
              "Hello",
              style: TextStyle(fontSize: 40),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlexProperty(),
                  ),
                );
              },
              child: Text("FlexPage"),
            ),
            RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          title: Text("Tawhid"),
                          content: ListView.builder(
                            itemCount: _alert.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Text(_alert[index]),
                                ],
                              );
                            },
                          ));
                    });
              },
              child: Text("Alert"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _new.length,
                itemBuilder: (contex, index) {
                  return ListTile(
                    title: Text(_new[index]),
                  );
                },
              ),
            )
          ],
        )),
      ),
    );
  }
}
