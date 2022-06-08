import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/provider1.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AProvider _aProvider = Provider.of<AProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Provider Deneme")),
      body: Column(
        children: <Widget>[
          TextFormField(
            obscureText: _aProvider.isSecure,
            controller: _aProvider.unameController,
            onChanged: (val) => _aProvider.setUserName(val),
          ),
          Text(_aProvider.uname),
          ElevatedButton.icon(
            icon: const Icon(Icons.change_circle),
            onPressed: () => _aProvider.changeTheme(!_aProvider.isDark),
            label: const Text("Change Theme"),
          ),
          Switch.adaptive(
              value: _aProvider.isDark,
              onChanged: (a) => _aProvider.changeTheme(a)),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(primary: Colors.amberAccent),
            icon: const Icon(Icons.change_circle),
            onPressed: () => _aProvider.changeSecure(!_aProvider.isSecure),
            label: const Text("Change Secure"),
          ),
        ],
      ),
    );
  }
}
