import 'package:http/http.dart';

import '../utils/app_configs.dart';

class ApiService {
  // Configs
  // final timeLimit = const Duration(seconds: 2);
  final headers = const <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
  };

  Future<StreamedResponse?> fetchProducts() async {
    final url = Uri.parse(AppConfig.productsPath);
    final request = Request('GET', url);
    request.headers.addAll(headers);

    try {
      final response = await request.send();
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return response;
      }
    } catch (_) {}

    print("products could not get.");
    return null;
  }
}
