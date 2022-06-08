import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/provider1.dart';
import 'package:provider_tutorial/views/home.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<AProvider>(create: (context) => AProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: context.watch<AProvider>().currentTheme,
      home: const HomeView(),
    );
  }
}
