import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildthrow UnimplementedError();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Word Counter",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: WordCounter(),
      ),
    );
  }
}

class WordCounter extends StatefulWidget {
  @override
  _WordCounter createState() => _WordCounter();
}

class _WordCounter extends State<WordCounter> {
  int _wordcount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "input your text here",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )),
              onChanged: (String str) {
                int temp = 0;
                List<String> ar = str.split(" ");
                temp = ar.length;
                setState(() {
                  _wordcount = temp;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "The number of words :  " + _wordcount.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
