import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  String userData = await fetchUserData();
  Map<String, dynamic> user = json.decode(userData);
  return user['id'];
} 