import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Constants/Konstants.dart';

class NotificationController extends GetxController {
  var notificationList = [].obs;

  void fetchNotifications() async {
    final response = await http.get(
      Uri.parse('${AppConstants.apiURL}/notify'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = json.decode(response.body);
      notificationList.assignAll(responseData['message']);
    } else {
      print('Failed to load notifications');
    }
  }
}
