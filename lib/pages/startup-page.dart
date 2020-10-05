import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartupPage extends StatefulWidget {
  @override
  _StartupPageState createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: List.generate(
          6,
          (index) => Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/ges_money.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(9, 30, 38, 1),
                          Color.fromRGBO(6, 21, 26, 1),
                        ],
                      ),
                    ),
                    child: const ListTile(
                      title: Text(
                        "281.657 \$",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Assistant',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "Ø Spieler letzte 30 Tage",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Assistant',
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
