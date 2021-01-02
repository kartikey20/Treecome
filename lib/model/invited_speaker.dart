import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<InvitedSpeakers>> fetchAdvisory(http.Client client) async {
  final response = await client.get('');
  return compute(parseAdvisory, response.body);
}

List<InvitedSpeakers> parseAdvisory(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map((json) => InvitedSpeakers.fromJson(json)).toList();
}

class InvitedSpeakers {
  final String name;
  final String designation;
  final String location;
  final String image;

  InvitedSpeakers({this.name, this.designation, this.location, this.image});

  factory InvitedSpeakers.fromJson(Map<String, dynamic> json) {
    return InvitedSpeakers(
      image : json['url'] as String,
      name: json['name'] as String,
      designation: json['designation'] as String,
      location: json['location'] as String,
    );
  }
}
