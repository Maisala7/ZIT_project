import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class DatabaseHelper {
  var success;
  var token;

  void printStreamedResponse(http.StreamedResponse response) {
    final buffer = StringBuffer(); // Buffer to accumulate the response body

    response.stream.listen(
      (data) {
        buffer.write(
            utf8.decode(data)); // Convert bytes to string and append to buffer
      },
      onDone: () {
        print(buffer.toString()); // //Print the accumulated response body
      },
      onError: (error) {
        print(
            'Error: $error'); // Handle any errors that occur while reading the stream
      },
      cancelOnError: true, // Cancel the stream on error
    );
  }

  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    const key = 'token';
    final value = token;
    prefs.setString(key, value);
  }

  loginData({required String username, required String password}) async {
    Uri myUrl = Uri.parse('http://vzzoz.pythonanywhere.com//login');
    final response = await http
        .post(myUrl, body: {"username": username, "password": password});
    var data = json.decode(response.body);
    success = data['success'];
    if (success) {
      _save(data['data']['token']);
      print(data['data']['token']);
    } else {
      print(data['message']);
    }
  }

  registerData(
      {required String username,
      required String password,
      required String email,
      required String phoneNumber,
      required String gender}) async {
    Uri myUrl = Uri.parse('http://vzzoz.pythonanywhere.com//register');
    final response = await http.post(myUrl, body: {
      "username": username,
      "password": password,
      "email": email,
      'PhoneNumber': phoneNumber,
      'Gender': gender
    });
    var data = json.decode(response.body);
    success = data['success'];
    if (success) {
      _save(data['data']['token']);
      print(data['data']['token']);
    } else {
      print(data['message']);
    }
  }

  Future<List> getStores() async {
    final prefs = await SharedPreferences.getInstance();
    const key = 'token';
    final value = prefs.get(key) ?? 0;

    Uri myUrl = Uri.parse('http://vzzoz.pythonanywhere.com/getstores');
    var response = await http.get(myUrl,
        headers: {'Authorization': 'token $value'});
    var data = json.decode(response.body);
    success = data['success'];
    //print(data['data']);
    return data['data'];
  }


  Future<List> getStoreCategoris({required int storeID}) async {
    //print(categoryID);
    final prefs = await SharedPreferences.getInstance();
    const key = 'token';
    final value = prefs.get(key) ?? 0;
    Uri myUrl =
        Uri.parse('http://vzzoz.pythonanywhere.com/getstorecategories');

    var response = await http.post(myUrl,
        headers: {'Authorization': 'token $value'},
        body: {"Store": storeID.toString()});
    var data = json.decode(response.body);
    success = data['success'];
    //print(data);
    return data['data'];
  }


  Future<List> getCategoryProducts({required int categoryId}) async {
    final prefs = await SharedPreferences.getInstance();
    const key = 'token';
    final value = prefs.get(key) ?? 0;

    Uri myUrl = Uri.parse('http://vzzoz.pythonanywhere.com/getcategoryproducts');
    var response = await http.post(myUrl,
        headers: {'Authorization': 'token $value'}, body: {"Category": categoryId.toString()});
    var data = json.decode(response.body);
    success = data['success'];
    return data['data'];
  }
}
