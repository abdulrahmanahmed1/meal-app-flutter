import 'package:flutter/material.dart';
import 'package:flutter_list3_1/widget/main_drawer.dart';

class AboutUsScreen extends StatefulWidget {
  static const String routeName = "about_us_screen";

  @override
  _AboutUsScreenState createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("About us"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Flutter Developer",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Center(
              child: Text(
                "Eng: Abdulrahman Ahmed",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
