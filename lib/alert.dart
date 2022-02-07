import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _notification =
        List<String>.generate(25, (index) => 'Notification $index');
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (() {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Tawhid"),
                    content: Container(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: _notification.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(_notification[index]),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          }),
          child: Text("Simple Alert"),
        ),
      ),
    );
  }
}
