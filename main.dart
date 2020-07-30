import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

mydata() async {
  //var url = "http://192.168.43.186/home.html";
  var url = "http://192.168.43.186/cgi-bin/date.py";
  var r = await http.get(url);
  //var sc = r.statusCode;
  var data = r.body;
  print(data);
}

mybody() {
  return RaisedButton(
    onPressed: mydata,
    child: Text('Click Me!'),
  );
}

var myappbar = AppBar(
  title: Text('ABhi app'),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myappbar,
        body: mybody(),
      ),
    );
  }
}
