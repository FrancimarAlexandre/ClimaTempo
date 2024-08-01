import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
String token = "cee02f336ae26297ea1da75e314f5a02";

Future <void> requestapi() async{
  final url = Uri.parse('http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=$token');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    print(response.body);
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
  requestapi();
    return Center(
      child: Text("home page"),
    );
  }
}