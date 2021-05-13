// ignore: unused_import
import 'dart:convert';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:http/http.dart' as http;
// ignore: unused_import
import 'package:intl/intl.dart';
// ignore: unused_import
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class InputPenjualan extends StatefulWidget {
  @override
  _InputPenjualanState createState() => _InputPenjualanState();
}

class _InputPenjualanState extends State<InputPenjualan> {
  TextEditingController nameController = TextEditingController();
  TextEditingController pembeliController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController hargaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Nama Pemesan",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.0))),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: pembeliController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Jumlah Pesanan",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.0))),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: jumlahController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Tipe LCD",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.0))),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      color: Colors.green,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        "Simpan",
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 5.0,
                  ),
                  Expanded(
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                    color: Colors.red,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text(
                      "Batal",
                      textScaleFactor: 1.5,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
