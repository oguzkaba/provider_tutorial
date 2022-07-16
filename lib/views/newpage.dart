import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key, required this.searchQuery}) : super(key: key);
  final String searchQuery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(searchQuery.toString())),
    );
  }
}
