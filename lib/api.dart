import 'package:http/http.dart' as http;

Future<void> getOutput({required String number}) async {
  final response = await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  print(response.body);
}