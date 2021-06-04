import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meu primeiro App",
      home: HomePage(),
      themeMode: ThemeMode.light, //ThemeMode.system,
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.purpleAccent,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.purple,
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageSate();
  }
}

class HomePageSate extends State<HomePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.purple,
      appBar: AppBar(
        //backgroundColor: Colors.purpleAccent,
        title: Text("Contador"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Contagem: $count",
            style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        //backgroundColor: Colors.purpleAccent,
        child: Icon(Icons.add),
      ),
      /*PreferredSize(child: Container(color: Colors.green),preferredSize: Size.fromHeight(65)),*/
    );
  }
}
