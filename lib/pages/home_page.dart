import 'package:flutter/material.dart';
import 'package:nav_bar_whatsapp/pages/setting.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  String email = "";
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("home"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            
            child: Column(
              children: [

                Icon(
                  Icons.account_circle,
                  size: 200,
                  color: Colors.blueAccent,
                ),

              ],
            )
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Entrez votre Email",
              labelText: "Email",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
              helperText: " votre email doit contenir @",
            ),
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "mot de passe",
              labelText: "Mot de passe",
              prefixIcon: Icon(Icons.password),
              border: OutlineInputBorder(),
              helperText: "votre mot de passe doit contenir 8 caractere",
            ),
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
          ),
          Center(
            child: Column(
              children: [
                Text(email),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/settings");
                  },
                  child: const Text("Setting"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
