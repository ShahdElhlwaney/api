import 'package:http/http.dart';

class ApiService {
  final _baseUrl = 'https://student.valuxapps.com/api/';
  final _headers = {'lang': 'ar', 'Content-Type': 'application/json'};
  Future getDate({required String endPoint}) async {
    final response =
        await get(Uri.parse('$_baseUrl$endPoint'), headers: _headers);
    return response.body;
  }

  Future postData({required String endPoint}) async {
    final response =
        await post(Uri.parse('$_baseUrl$endPoint'), headers: _headers);
    return response.body;
  }

  Future putData({required String endPoint}) async {
    final response =
        await put(Uri.parse('$_baseUrl$endPoint'), headers: _headers);
    return response.body;
  }

  Future deleteData({required String endPoint}) async {
    final response =
        await delete(Uri.parse('$_baseUrl$endPoint'), headers: _headers);
    return response.body;
  }
}
