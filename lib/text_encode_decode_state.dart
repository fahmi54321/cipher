import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TextEncodeDecodeState extends ChangeNotifier {
  final TextEditingController controller = TextEditingController();
  final String baseUrl = "http://127.0.0.1:5000";

  String encodedText = "";
  String decodedText = "";

  bool isLoadingEncode = false;
  bool isLoadingDecode = false;

  void updateIsLoadingEncode({required bool value}) {
    isLoadingEncode = value;
    notifyListeners();
  }

  void updateIsLoadingDecode({required bool value}) {
    isLoadingDecode = value;
    notifyListeners();
  }

  void updateEncodeText({required String value}) {
    encodedText = value;
    notifyListeners();
  }

  void updateDecodeText({required String value}) {
    decodedText = value;
    notifyListeners();
  }

  void encodeText(String input) async {
    updateIsLoadingEncode(value: true);

    await Future.delayed(const Duration(seconds: 2)); // simulate delay
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/encode"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"text": input}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        updateEncodeText(value: data["encoded"] ?? "");
      } else {
        updateEncodeText(value: "⚠️ Error: ${response.body}");
      }
    } catch (e) {
      updateEncodeText(value: "⚠️ Failed to connect API: $e");
    } finally {
      updateIsLoadingEncode(value: false);
    }
  }

  void decodeText(String input) async {
    updateIsLoadingDecode(value: true);

    await Future.delayed(const Duration(seconds: 2)); // simulate delay

    try {
      final response = await http.post(
        Uri.parse("$baseUrl/decode"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"text": input}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        updateDecodeText(value: data["decoded"] ?? "");
      } else {
        updateDecodeText(value: "⚠️ Error: ${response.body}");
      }
    } catch (e) {
      updateDecodeText(value: "⚠️ Failed to connect API: $e");
    } finally {
      updateIsLoadingDecode(value: false);
    }
  }
}
