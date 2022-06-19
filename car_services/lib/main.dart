import 'package:car_services/GetData.dart';
import 'package:car_services/HomePage.dart';
import 'package:car_services/receipt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    routes: {
      '/homepage': ((context) => const HomePage()),
      '/particular': ((context) => GetData(sn, cr, r, im, ph, qr)),
      '/receipt': ((context) => receipt())
    },
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
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Wheeler',
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 30),
                )),
          ],
        ),
      ),
    );
  }
}
