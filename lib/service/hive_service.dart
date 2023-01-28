import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  static final HiveService instance = HiveService._internal();

  factory HiveService() {
    return instance;
  }

  HiveService._internal();
  Box<dynamic> getThemeMode() => Hive.box('darkMode');

  bool isDarkTheme(bool value) {
    return Hive.box('darkMode').get('darkMode', defaultValue: value);
  }

  Future<void> currentTheme(bool value) async {
    await Hive.box('darkMode').put('darkMode', value);
  }

  Future<void> _createBox() async {
    await Hive.openBox('darkMode');
  }

  Future init() async {
    // Initializing the hive
    await Hive.initFlutter();
    await _createBox();
  }
}
