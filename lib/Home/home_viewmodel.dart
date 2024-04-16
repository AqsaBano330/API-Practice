import 'dart:convert';

import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HomeViewModel extends BaseViewModel{


get() async {


 var url =
      Uri.https('crudcrud.com', '/api/3ee5250d83904e59ac6fc869bd016b7d/unicorns');
  var response = await http.get(url);
    var jsonResponse =
        convert.jsonDecode(response.body);
        print(jsonResponse);
  

}








Future post() async {
var url =
      Uri.https('crudcrud.com', '/api/3ee5250d83904e59ac6fc869bd016b7d/unicorns');

   await http.post(url
    ,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      
    "name": "aqsa",
    "age": 45678,
    "color": "bye"
    }),
  );
}

Future put() async {
var url =
      Uri.https('crudcrud.com', '/api/3ee5250d83904e59ac6fc869bd016b7d/unicorns');

   await http.put(url
    ,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      
    "name": "aqsa",
    "age": 45678,
    "colour": "bye"
    }),
  );
}

Future delete() async {
var url =
      Uri.https('crudcrud.com', '/api/3ee5250d83904e59ac6fc869bd016b7d/unicorns/658c1d548f133a03e8f90603');

   await http.delete(url);
  
}

}