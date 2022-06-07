import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dolapyonetim/pages/kilitac.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class sifreBelirle extends StatefulWidget {
  final String? dolapId;
  const sifreBelirle({Key? key, this.dolapId}) : super(key: key);

  @override
  _sifreBelirleState createState() => _sifreBelirleState();
}

class _sifreBelirleState extends State<sifreBelirle> {
  TextEditingController sifreBelirleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final docUser = FirebaseFirestore.instance.collection('dolaplar').doc();
    CollectionReference dolaplarRef = _firestore.collection('dolaplar');

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text(
          "Dolap 1",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: sifreBelirleController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                    labelText: "Şifre Belirleyiniz",
                    labelStyle: TextStyle(fontFamily: "Subtitle"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 150,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () async {
                      Map<String, dynamic> sifre = {
                        'password': sifreBelirleController.text,
                        'isOpen': false,
                        'image': "assets/images/cabinetRed.png"
                      };
                      await dolaplarRef.doc(widget.dolapId).set(sifre);
                      locked(context);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: const Text('Şifre Belirle',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => kilitac()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: const Text('Kilit Aç',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

void locked(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text('Uyarı!'),
    content: Text("Kilitlendi"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
