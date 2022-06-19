import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class receipt extends StatefulWidget {
  const receipt({Key? key}) : super(key: key);

  @override
  State<receipt> createState() => _receiptState();
}

class _receiptState extends State<receipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/ok.jpeg"),
          Text(
            "SUCCESSFUL",
            style: TextStyle(color: Colors.green, fontSize: 40),
          )
        ],
      ),
    );
  }
}
