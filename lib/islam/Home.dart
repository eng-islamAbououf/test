import 'package:flutter/cupertino.dart';
import 'package:school_mobile_app/islam/background.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const routName = "Home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Background(child: Text("islam"));
  }
}
