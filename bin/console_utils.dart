import 'dart:io';
import 'data.dart';

class ConsoleUtils {
  static void clearConsole() {
    if (Platform.isWindows) {
      print(Process.runSync("cls", [], runInShell: true).stdout);
    } else {
      print(Process.runSync("clear", [], runInShell: true).stdout);
    }
  }

  static void displayBattleLocations() {
    for (int i = 0; i < battleLocations.length; i++) {
      print('${i + 1}. ${battleLocations[i].name}');
    }
  }

  static int getUserInput() {
    stdout.write('Ваш выбор: ');
    final locationInput = stdin.readLineSync();
    return int.tryParse(locationInput ?? '') ?? -1;
  }
}
