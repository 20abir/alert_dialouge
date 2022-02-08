import 'package:flutter/material.dart';

class FlexProperty extends StatelessWidget {
  const FlexProperty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              // ignore: avoid_unnecessary_containers
              Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.center,
                  width: width,
                  color: Colors.redAccent,
                  child: Text("Tawhid 0"),
                ),
              ),
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        width: width,
                        color: Colors.purpleAccent,
                        child: Text("Tawhid 3"),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              alignment: Alignment.center,
                              width: width,
                              color: Colors.blueGrey,
                              child: Text("Tawhid 4"),
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Container(
                              alignment: Alignment.center,
                              width: width,
                              color: Colors.orange[200],
                              child: Text("Tawhid 5"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  width: width,
                  color: Colors.greenAccent,
                  child: Text("Tawhid 2"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
