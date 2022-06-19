import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  List<TextEditingController> txtcon = [];
  bool isAvailable = true;
  String s = 's';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 5; i++) {
      txtcon.add(new TextEditingController());
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    for (var i = 0; i < 5; i++) {
      txtcon[i].dispose();
    }
    NfcManager.instance.stopSession();
  }

  Future<bool> getNfc() {
    return NfcManager.instance.isAvailable();
  }

  void printnfc() async {
    bool b = await getNfc();
    setState(() {
      isAvailable = b;
    });
  }

  void NfcAction() {
    if (isAvailable) {
      NfcManager.instance.startSession(onDiscovered: (NfcTag tag) async {
        setState(() {
          s = tag.data as String;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$s'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 60,
                  child: Container(
                    child: Image.asset('assets/images/ironheart.jpg'),
                    width: 70,
                  ),
                ),
                TextField(
                  controller: txtcon[0],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'enter username'),
                ),
                TextField(
                  controller: txtcon[1],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'enter email'),
                ),
                TextField(
                  controller: txtcon[2],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'phonenumber'),
                ),
                TextField(
                  controller: txtcon[3],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'enter linkedin'),
                ),
                TextField(
                  controller: txtcon[4],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'enter github'),
                ),
                ElevatedButton(
                    onPressed: () {
                      // for (var i = 0; i < 5; i++) {
                      //   print(txtcon[i].text);
                      // }
                      // NfcAction();
                    },
                    child: Text('Save'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
