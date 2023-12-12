import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _listdata = [];
  bool _isloading = true;

  Future _getdata() async {
    try {
      final respone =
          await http.get(Uri.parse('http://192.168.0.116/extroverse/api/'));
      if (respone.statusCode == 200) {
        print(respone.body);
        final data = jsonDecode(respone.body);
        setState(() {
          _listdata = data;
          _isloading = false;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: _isloading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _listdata.length,
              itemBuilder: ((context, index) {
                return Card(
                  child: ListTile(
                    title: Text(_listdata[index]['nama_acara'].toString()),
                    subtitle: Text(_listdata[index]['deskripsi'].toString()),
                    leading: Image.network(
                      _listdata[index]['cover_foto'].toString(),
                      width: 50.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              })),
    );
  }
}
