import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dolapyonetim/pages/sifreBelirle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String? imageDolap0;
String? imageDolap1;

class dolapkilit extends StatefulWidget {
  const dolapkilit({Key? key}) : super(key: key);

  @override
  State<dolapkilit> createState() => _dolapkilitState();
}

class _dolapkilitState extends State<dolapkilit> {
  @override
  Widget build(BuildContext context) {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    final docRef0 = _firestore.collection("dolaplar").doc("0");
    docRef0.get().then(
      (DocumentSnapshot doc) {
        final data = doc.data() as Map<String, dynamic>;
        imageDolap0 = data["image"];
        setState(() {});
      },
      onError: (e) => print("Error getting document: $e"),
    );

    final docRef1 = _firestore.collection("dolaplar").doc("1");
    docRef1.get().then(
      (DocumentSnapshot doc) {
        final data = doc.data() as Map<String, dynamic>;
        imageDolap1 = data["image"];
        setState(() {});
      },
      onError: (e) => print("Error getting document: $e"),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text(
          "Akıllı Dolap Sistemi",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Image.asset(
                      imageDolap0!,
                      width: 200,
                      height: 150,
                    )),
                    Expanded(
                        child: Image.asset(
                      imageDolap1!,
                      width: 200,
                      height: 150,
                    )),
                  ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 150,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => sifreBelirle(
                                dolapId: '0',
                              ));
                      Navigator.push(context, route)
                          .then((value) => setState(() {}));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: const Text('Dolap 1',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 150,
                  height: 100,
                  child: RaisedButton(
                    onPressed: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => sifreBelirle(
                                dolapId: '1',
                              ));
                      Navigator.push(context, route)
                          .then((value) => setState(() {}));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    child: const Text('Dolap 2',
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

void dolapkapali(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Uyarı!"),
    content: Text("Bu Dolap Kullanılamaz.Başka Dolap Seçiniz."),
  );
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
