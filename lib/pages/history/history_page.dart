import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  static const id = "/history_page";
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("History Page"),
      ),
    );
  }
}
