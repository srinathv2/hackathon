import 'package:flutter/material.dart';
import 'package:nfc_business_card/CardDetails.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {'/CardDetails': (context) => const CardDetails()},
    home: Scaffold(
      body: MyApp(),
      backgroundColor: Colors.black,
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('Create Card'),
        onPressed: () {
          Navigator.pushNamed(context, '/CardDetails');
        },
      ),
    );
  }
}
