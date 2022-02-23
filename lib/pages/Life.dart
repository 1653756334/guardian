import 'package:flutter/material.dart';

class Life extends StatefulWidget {
  const Life({Key? key}) : super(key: key);

  @override
  _LifeState createState() => _LifeState();
}

class _LifeState extends State<Life> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("我是生命"),
    );
  }
}
