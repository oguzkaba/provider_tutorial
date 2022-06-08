import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/provider1.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.watch<AProvider>().unameController.text),
      ),
    );
  }
}
