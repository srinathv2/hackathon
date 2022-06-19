import 'package:car_services/receipt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

String sn = '', cr = '', r = '', im = '', qr = '';
num ph = 0;

class GetData extends StatefulWidget {
  final String service_name, Cost_Range, Rating, image, quikrev;
  final num phnum;
  GetData(this.service_name, this.Cost_Range, this.Rating, this.image,
      this.phnum, this.quikrev) {
    sn = service_name;
    cr = Cost_Range;
    r = Rating;
    im = image;
    ph = phnum;
    qr = quikrev;
  }
  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  String status = 'Book Slot';
  void setstatus() async {
    DateTime? dt = await DatePicker.showDatePicker(context);
    if (dt != null) {
      Navigator.pushNamed(context, "/receipt");
      setState(() {
        status = 'BOOKED!!!!!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sn),
      ),
      body: Column(
        children: [
          SizedBox(
            child: Image.asset(im),
            height: 300,
          ),
          Padding(
            padding: EdgeInsets.all(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Cost range(in Rs):" + cr,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  Text(
                    r,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              'Quick Preview:-$qr',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
          ),
          ElevatedButton(
              onPressed: () {
                setstatus();
              },
              child: Text('$status'))
        ],
      ),
    );
  }
}
