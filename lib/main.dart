import 'package:flutter/material.dart';

import "quote.dart";

void main() {
  runApp(const MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "This is quote text", author: "Alpha Admin"),
    Quote(text: "This is quote text", author: "Alpha Admin"),
    Quote(text: "This is quote text", author: "Alpha Admin"),


  ];
  List<String> authors = [""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Alpha Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((q) {
          return Text("${q.text} - ${q.author}");
        }).toList(),
      ),
    );
  }
}
