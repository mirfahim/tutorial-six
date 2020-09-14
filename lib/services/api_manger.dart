import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tutorialsix/constant/strings.dart';
import 'package:tutorialsix/models/apiinfo.dart';

class Api_Manager {
  Future<NewsModel> getnews() async{
var client = http.Client();
var newsmodel= null;
try{
   var respose = await client.get(Strings.news_url);

   if (respose.statusCode==200){
     var jsonString = respose.body;
     var jsonmap = json.decode(jsonString);
        newsmodel = NewsModel.fromJson(jsonmap);
   }
}catch(Exeption){
  return newsmodel;

}
   return newsmodel;
  }
}