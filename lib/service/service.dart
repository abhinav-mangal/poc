import 'package:contacts_app/Utils/constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<dynamic> get({String endpoint = "users?limit=5"}) async {
    final response = await http.get(Uri.parse('${Constants.baseUrl}/$endpoint'));
    return _handleResponse(response);
  }

  // Future<dynamic> post(String endpoint, Map<String, dynamic> body) async {
  //   final response = await http.post(
  //     Uri.parse('$baseUrl/$endpoint'),
  //     headers: {'Content-Type': 'application/json'},
  //     body: json.encode(body),
  //   );
  //   return _handleResponse(response);
  // }

  _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response;
    } else {
      throw Exception('HTTP Error: ${response.statusCode}');
    }
  }
}
