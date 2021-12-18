import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

main() {
  runApp(testweb());
}

class testweb extends StatefulWidget {
  @override
  _testwebState createState() => _testwebState();
}

class _testwebState extends State<testweb> {
  bool animation_value = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Windows Application",
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text ("CA"),
          onPressed: () {

          setState(() {
            animation_value=!animation_value;
          });
        },

        ),
        body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Test Flutter Windows Application",
                      style: TextStyle(color: Colors.red, fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  height: 400,
                  width: 400,
                  child: FlareActor(
                    "assets/animation.flr",
                    alignment: Alignment.center,
                    animation: animation_value==true? "success":"fail",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Nais it's working :)",
                      style: TextStyle(color: Colors.red, fontSize: 40),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
