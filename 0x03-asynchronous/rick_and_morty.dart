import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String url = 'https://rickandmortyapi.com/api/character';
    
    while (url.isNotEmpty) {
      // Make HTTP request
      final response = await http.get(Uri.parse(url));
      
      if (response.statusCode == 200) {
        // Parse JSON response
        Map<String, dynamic> data = json.decode(response.body);
        List<dynamic> characters = data['results'];
        
        // Print character names
        for (var character in characters) {
          print(character['name']);
        }
        
        // Check if there's a next page
        if (data['info']['next'] != null) {
          url = data['info']['next'];
        } else {
          url = '';
        }
      } else {
        print('error caught: HTTP ${response.statusCode}');
        return;
      }
    }
  } catch (error) {
    print('error caught: $error');
  }
} 