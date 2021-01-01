import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<Invited_speakers>> fetchAdvisory(http.Client client) async {
  final response = await client.get('');
  return compute(parseAdvisory, response.body);
}

List<Invited_speakers> parseAdvisory(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map((json) => Invited_speakers.fromJson(json)).toList();
}

class Invited_speakers {
  final String name;
  final String designation;
  final String location;
  final String image;

  Invited_speakers({this.name, this.designation, this.location, this.image});

  factory Invited_speakers.fromJson(Map<String, dynamic> json) {
    return Invited_speakers(
      image : json['url'] as String,
      name: json['name'] as String,
      designation: json['designation'] as String,
      location: json['location'] as String,
    );
  }
}
