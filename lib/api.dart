import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sample_api/get_number_fact_model/get_number_fact_model.dart';

Future<GetNumberFactModel> getNumberFact({required String number}) async {
  final response = await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;
  final data = GetNumberFactModel.fromJson(bodyAsJson);
  return data;
}