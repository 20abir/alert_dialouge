import 'package:flutter/material.dart';

class ListViewBuild extends StatelessWidget {
  const ListViewBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _new = List<String>.generate(50, (index) => 'Tawhid $index');
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                "Hello",
                style: TextStyle(fontSize: 50),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _new.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blue[100],
                      child: Column(
                        children: [
                          Text(
                            _new[index],
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
