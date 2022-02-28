import 'package:flutter/material.dart';
import 'package:guardian/widgets/ProjectAppBar.dart';

class PairingPage extends StatefulWidget {
  const PairingPage({Key? key}) : super(key: key);

  @override
  _PairingPageState createState() => _PairingPageState();
}

class _PairingPageState extends State<PairingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjectAppBar(),
      body: Container(
        child: MaterialButton(onPressed: () {

        },
          child: Text("按钮"),
        ),
      ),
    );
  }
}
