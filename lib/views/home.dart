import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/providers/provider1.dart';
import 'package:provider_tutorial/providers/thicness_provider.dart';
import 'page3.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    Provider.of<ThiknessProvider>(context, listen: false).getThick();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AProvider _aProvider = Provider.of<AProvider>(context);
    ThiknessProvider _thickProvider = Provider.of<ThiknessProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Provider Deneme")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: TextFormField(
                  obscureText: _aProvider.isSecure,
                  controller: _aProvider.unameController,
                  onChanged: (val) => _aProvider.setUserName(val),
                ),
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
              const SizedBox(height: 40),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 255, 64, 64)),
                icon: const Icon(Icons.forward),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const Page3View()))),
                label: const Text("Change toPage"),
              ),
              const SizedBox(height: 40),
              //buildList
            ],
          ),
          _thickProvider.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: DataTable(columns: const [
                    DataColumn(label: Text("Inch")),
                    DataColumn(label: Text("MM")),
                  ], rows: [
                    for (var i = 0; i < _thickProvider.thkList.length; i++)
                      // if (_thickProvider.thkList[i].inch == 80)
                      DataRow(cells: [
                        DataCell(
                            Text(_thickProvider.thkList[i].inch.toString())),
                        DataCell(Text(_thickProvider.thkList[i].mm.toString()))
                      ])
                  ]),
                )
        ],
      ),
    );
  }
}
