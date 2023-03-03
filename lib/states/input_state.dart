import 'package:flutter/material.dart';

class InputState extends ChangeNotifier {
  final List<String> _userInputs = [];
  List<String> getUserInputs() {
    return _userInputs;
  }

  void addUserInput(String value) {
    // ignore: todo
    // TODO: Kiểm tra xem nếu user có nhập vào thì push vào mảng _userInputs w
    if (value.trim().isNotEmpty) {
      _userInputs.add(value.trim());
      notifyListeners();
    }
  }
}
