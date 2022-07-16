import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class Home2View extends StatelessWidget {
  const Home2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var forList =
        List.generate(30, (int index) => index * index, growable: true);
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return StickyHeader(
                header: Container(
                  height: 50.0,
                  color: Colors.blueGrey[700],
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Header #$index',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                content: SizedBox(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: forList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Text(
                              forList[index].toString(),
                            ),
                          );
                        })));
          }),
    );
  }
}
