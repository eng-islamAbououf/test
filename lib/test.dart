import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:school_mobile_app/shared/components/components.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  Future getData() async {
    final Dio dio = new Dio();
    try {
      int id = 2;
      /************dio****************/
      final String baseUrl = 'http://192.168.1.4:80/';
      var response = await dio.get('${baseUrl}api/parent/$id');
      print(response.data);
      var responseData = response.data as List;
      return responseData;
    } on DioError catch (e) {
      print(e);
      return 'error is $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FutureBuilder<dynamic>(
          future: getData(), //put function in it
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.toString());
              // return ListView.separated(
              //   itemBuilder: (context, i) => Container(
              //     child: Text(snapshot.data[i].toString()),
              //   ),
              //   separatorBuilder: (context, index) => myDivider(),
              //   itemCount: 1,
              // );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
