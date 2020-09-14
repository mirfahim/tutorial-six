import 'package:flutter/material.dart';
import 'package:tutorialsix/models/apiinfo.dart';
import 'package:tutorialsix/services/api_manger.dart';

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<NewsModel>_newsmodel;
  @override
  void initState(){
    _newsmodel = Api_Manager().getnews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      
        title: Text(""),
      ),
      body: Container(
        child: ListView.builder(itemBuilder: (context,index){
          return Container(
            height: 100,
            color: Colors.white30,
          );
        }),
       
       
      ),
      
    );
  }
}
