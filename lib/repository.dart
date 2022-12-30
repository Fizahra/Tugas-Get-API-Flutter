import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model.dart';

class Repository {
  final _baseUrl =
      'https://63ad2a3dda81ba9761945aed.mockapi.io/api/staff/staff';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);
        List<Staff> staff = it.map((e) => Staff.fromJson(e)).toList();
        return staff;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
