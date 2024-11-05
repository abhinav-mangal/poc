import 'package:contacts_app/Utils/constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  final dio = Dio();

  Future<dynamic> get({String endpoint = "users?limit=5"}) async {
    interceptors();
    final response = await dio.get('${Constants.baseUrl}/$endpoint');
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

  Response _handleResponse(Response response) {
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return response;
    } else {
      throw Exception('HTTP Error: ${response.statusCode}');
    }
  }

  interceptors() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Add a custom header to the request
          // options.headers['Authorization'] = 'Bearer my_token';
          return handler.next(options);
        },
      ),
    );
  }
}
