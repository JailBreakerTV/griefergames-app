import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:griefergames_app/pages/startup-page.dart';
import 'package:griefergames_app/pages/vote-page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  Widget findByIndex() {
    if (this._selectedIndex == 2) {
      return VotePage();
    }
    return StartupPage();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
          elevation: 0,
          centerTitle: true,
          title: Image(
            width: 130,
            height: 130,
            image: new AssetImage(
              "assets/images/griefergames_lettering.png",
            ),
          ),
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Color.fromRGBO(0, 0, 0, 0.6),
                BlendMode.darken,
              ),
              image: AssetImage(
                "assets/images/background.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 5, right: 5),
            child: findByIndex(),
          ),
        ),
        bottomNavigationBar: _createBottomNavigationBar(),
      ),
    );
  }

  Widget _createBottomNavigationBar() {
    return Container(
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
      child: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          fontFamily: 'Assistant',
          fontSize: 15.0,
        ),
        items: [
          BottomNavigationBarItem(
            backgroundColor:
                this._selectedIndex == 0 ? Colors.white : Colors.grey,
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Startseite",
          ),
          BottomNavigationBarItem(
            backgroundColor:
                this._selectedIndex == 1 ? Colors.white : Colors.grey,
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: "Profil",
          ),
          BottomNavigationBarItem(
            backgroundColor:
                this._selectedIndex == 2 ? Colors.white : Colors.grey,
            icon: Icon(Icons.star_outline),
            activeIcon: Icon(Icons.star),
            label: "Vote",
          )
        ],
        currentIndex: this._selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      this._selectedIndex = index;
    });
  }
}
