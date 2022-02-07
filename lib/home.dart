import 'package:flutter/material.dart';

class CustomAlert extends StatefulWidget {
  const CustomAlert({Key? key}) : super(key: key);

  @override
  _CustomAlertState createState() => _CustomAlertState();
}

class _CustomAlertState extends State<CustomAlert> {
  // ignore: prefer_final_fields
  List _notification =
      List<String>.generate(25, (index) => 'Notification $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: ListView.builder(
                      itemCount: _notification.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(_notification[index]),
                        );
                      },
                    ),
                  );
                });
          },
          child: Text("Custom Alert"),
        ),
      ),
    );
  }
}
