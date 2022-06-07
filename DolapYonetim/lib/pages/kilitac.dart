import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

String? password;

class kilitac extends StatefulWidget {
  const kilitac({Key? key}) : super(key: key);

  @override
  _kilitacState createState() => _kilitacState();
}

class _kilitacState extends State<kilitac> {
  TextEditingController sifrekontrolController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CollectionReference dolaplarRef = _firestore.collection('dolaplar');

    final docRef = _firestore.collection("dolaplar").doc("0");
    docRef.get().then(
      (DocumentSnapshot doc) {
        final data = doc.data() as Map<String, dynamic>;
        password = data["password"];
      },
      onError: (e) => print("Error getting document: $e"),
    );

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
                controller: sifrekontrolController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                    labelText: "Şifrenizi Giriniz",
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
              SizedBox(
                width: 150,
                height: 100,
                child: RaisedButton(
                  onPressed: () async {
                    if (sifrekontrolController.text == password) {
                      Map<String, dynamic> sifre = {
                        'password': null,
                        'isOpen': true,
                        'image': "assets/images/cabinetGreen.png"
                      };
                      await dolaplarRef.doc('0').set(sifre);
                      opened(context);
                    } else {
                      warning(context);
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: const Text('Kilit Aç',
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void opened(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text('Uyarı!'),
    content: Text("Kilit Açıldı"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}

void warning(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text('Uyarı!'),
    content: Text("Şifreniz Yanlış"),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
