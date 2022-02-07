import 'package:flutter/material.dart';

class Ajaira extends StatefulWidget {
  const Ajaira({Key? key}) : super(key: key);

  @override
  _AjairaState createState() => _AjairaState();
}

class _AjairaState extends State<Ajaira> {
  // ignore: prefer_final_fields
  List _new = List<String>.generate(20, (index) => 'Tawhid $index');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                "Hello Bangladesh",
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _new.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_new[index]),
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
