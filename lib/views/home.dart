import 'dart:html';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/provider1.dart';
import 'package:provider_tutorial/views/page2.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AProvider _aProvider = Provider.of<AProvider>(context);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("Provider Deneme")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text("Provider Tutorial HomePage",
                style: TextStyle(fontSize: 44), textAlign: TextAlign.center),
            const SizedBox(height: 40),
            SizedBox(
              width: _size.width * .9,
              child: TextField(
                obscureText: _aProvider.isSecure,
                controller: _aProvider.unameController,
                onChanged: (val) => _aProvider.setUserName(val),
              ),
            ),
            Text(_aProvider.uname),
            Text("Date:  ${DateTime.now()}"),
            CupertinoSwitch(
                value: _aProvider.isDark,
                onChanged: (a) => _aProvider.changeTheme(a)),
            ElevatedButton.icon(
              icon: const Icon(Icons.change_circle),
              onPressed: () => _aProvider.changeTheme(!_aProvider.isDark),
              label: const Text("Change Theme"),
            ),
            const SizedBox(height: 15),
            Text(_aProvider.isDark
                ? "Dark Theme Enabled"
                : "Light Theme Enabled"),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              icon: const Icon(Icons.change_circle),
              onPressed: () => _aProvider.changeSecure(!_aProvider.isSecure),
              label: const Text("Change Secure"),
            ),
            const SizedBox(height: 15),
            Card(
              child: SizedBox.fromSize(size: Size(_size.width * .9, 100)),
            ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              icon: const Icon(Icons.navigate_next),
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => const Page2()))),
              label: const Text("Go Page"),
            ),
          ],
        ),
      ),
    );
  }
}
