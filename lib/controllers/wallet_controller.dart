import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../Constants/Konstants.dart';

class WalletController extends GetxController {
  var balance = 0.obs;

  Future<void> fetchWalletBalance() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final userId = prefs.getString('userId');

      final url = Uri.parse('${AppConstants.apiURL}/wallet/get/$userId');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final List<dynamic> walletData = responseData['data'];

        if (walletData.isNotEmpty) {
          final wallet = walletData.first;
          balance.value = wallet['balance'];
        }
      } else {
        print('Failed to fetch wallet balance');
      }
    } catch (e) {
      print('Exception: $e');
    }
  }
}
