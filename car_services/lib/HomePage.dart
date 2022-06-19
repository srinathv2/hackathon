import 'package:car_services/GetData.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Wheeler',
        style: TextStyle(fontSize: 30),
      )),
      body: ListView(children: [
        CarouselSlider(
          items: [
            Image.asset('assets/images/ban1.jpeg'),
            Image.asset('assets/images/ban2.jpeg'),
            Image.asset('assets/images/ban3.jpeg')
          ],
          options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 1,
            autoPlayInterval: Duration(seconds: 2),
            disableCenter: false,
          ),
        ),
        Center(
            child: Text(
          'Best Car Services Near You',
          style: TextStyle(fontSize: 22),
        )),
        Padding(padding: EdgeInsets.all(10)),
        TextButton(
          onPressed: () {
            GetData(
                "IronMan motors",
                '2000-3000',
                '5/5',
                'assets/images/cs1.jpeg',
                007,
                'Fast service,Feasible,Door Step Pick');
            Navigator.pushNamed(context, '/particular');
          },
          child: Column(
            children: [
              Image.asset('assets/images/cs1.jpeg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'IronMan Motors',
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        '5/5',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextButton(
          onPressed: (() {
            GetData("Hulk motors", '1000-1500', '5/5', 'assets/images/cs2.jpeg',
                100, 'Customization,CarWash,Fast Service,Door Step PickUp');
            Navigator.pushNamed(context, '/particular');
          }),
          child: Column(
            children: [
              Image.asset('assets/images/cs2.jpeg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hulk Motors',
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        '5/5',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextButton(
          onPressed: () {
            GetData("Cap motors", '1750-5000', '4/5', 'assets/images/cs3.jpeg',
                901, 'Customization,CarWash,Fast Service,Door Step PickUp');
            Navigator.pushNamed(context, '/particular');
          },
          child: Column(
            children: [
              Image.asset('assets/images/cs3.jpeg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cap Motors',
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        '4/5',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextButton(
          onPressed: () {
            GetData("Some motors", '4000-5000', '3/5', 'assets/images/cs4.jpeg',
                12345, 'Personal Care,Fast Service');
            Navigator.pushNamed(context, '/particular');
          },
          child: Column(
            children: [
              Image.asset('assets/images/cs4.jpeg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Some Motors',
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        '3/5',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(10)),
        TextButton(
          onPressed: () {
            GetData(
                "Known motors",
                '6000-7000',
                '2/5',
                'assets/images/cs5.jpeg',
                104,
                'Door Step Service,Fast Service,Customization');
            Navigator.pushNamed(context, '/particular');
          },
          child: Column(
            children: [
              Image.asset('assets/images/cs5.jpeg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Known Motors',
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        '2/5',
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
