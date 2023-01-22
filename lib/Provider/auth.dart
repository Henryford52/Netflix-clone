import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class Moviefetch extends ChangeNotifier {
  String? _token;
  String? _accessTokenType;

  bool? get isAuth {
    print(token);
    return token != null;
  }

  String? get token {
    if (_token != null) {
      return _token;
    }
    return null;
  }

  String? get accessTokenType {
    if (_accessTokenType != null) {
      return _accessTokenType;
    }
    return null;
  }

  get error => null;

  Future<void> _movieDetails() async {
    var data = jsonEncode({});
    var url = Uri.parse(
        "https://netflix54.p.rapidapi.com/title/details/?ids=80057281&lang=en");
    print(data);
    print(url);
    try {
      final response = await http.post(
        url,
        headers: {
          "content-type": "application/json",
          "X-RapidAPI-Key": "1706f548a6msh05c4317e84425eep1b24abjsn0c33979d656a"
        },
        body: data,
      );
      var resData = jsonDecode(response.body);
      print(resData);
      print(response.statusCode);
      if (response.statusCode != 200) {
        throw HttpException(resData["message"]);
      }
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
