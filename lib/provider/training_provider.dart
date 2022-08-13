import 'dart:convert';
import 'package:ashar_test/models/training_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class TrainingProvider with ChangeNotifier {
  List<Datum> trainingData = [];


  getData() async {
  
    const url =
        'https://uat.get-licensed.co.uk/api/v1/partners/135/course-events?trainer_allocation_status=inprogress&response_for=partner_inprogress&order_by=ASC';

    final response = await http.get(
      Uri.parse(url),
      headers: <String, String>{'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      TrainingModel data = TrainingModel.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
      trainingData = data.data;
     
      return trainingData;
     
    } else if (response.statusCode == 500) {
      return "no data";
    }
    
    notifyListeners();
  }
}
