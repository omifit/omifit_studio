import 'package:dio/dio.dart';

class PlaceSearch {
  // auto place suggestion
  Future<List<String>> fetchLocationSuggestions(String query) async {
    const String apiKey = "AIzaSyBnW4iG_nYqaUctsyR7TzkMy8WPAHSLx14";
    final String apiUrl =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=$apiKey';
    final response = await Dio().get(apiUrl);
    if (response.statusCode == 200) {
      final  data = response.data;
      if (data['status'] == 'OK') {
        final predictions = data['predictions'];
        final List<String> suggestions = [];
        for (var i = 0; i < predictions.length; i++) {
          suggestions.add(predictions[i]['description']);
        }

        return suggestions;
      }
    }
    return [];
  }
}
