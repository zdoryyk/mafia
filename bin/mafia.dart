import 'member.dart';
import 'dart:io';
import 'mafia_game.dart';
import 'data.dart';

MafiaGame game = MafiaGame();
void main() {
  while (true) {
    print('Меню:');
    print('1. Мой клан');
    print('2. Набрать людей в клан');
    print('3. Рекет');
    print('4. Выйти');
    stdout.write('Выберите пункт: ');

    final input = stdin.readLineSync();
    switch (input) {
      case '1':
        clearConsole();
        game.printInfoAboutClan();
        break;
      case '2':
        clearConsole();
        selectMembersToClanInput();
        break;
      case '3':
        selectBattleLocationInput();
        break;
      case '4':
        print('Выход из программы.');
        return;
      default:
        print('Неверный ввод. Попробуйте еще раз.');
    }
  }
}

void selectMembersToClanInput() {
  if (availableMembers.isEmpty) {
    print('Нету доступных участников');
    return;
  }
  print('Доступные участники:');
  for (int i = 0; i < availableMembers.length; i++) {
    print(
        '${i + 1}. ${availableMembers[i].name} (${availableMembers[i].memberType == MemberType.boss ? 'Boss' : 'Casual'})');
  }
  print('${availableMembers.length + 1}. Добавить всех');
  stdout.write('Введите номер участника, чтобы добавить в клан: ');
  final memberIndex = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
  if (memberIndex > 0 && memberIndex <= availableMembers.length) {
    final selectedMember = availableMembers.removeAt(memberIndex - 1);
    game.addMemberToClan(selectedMember);
  } else if (memberIndex == availableMembers.length + 1) {
    game.addMembersToClan(availableMembers);
    availableMembers.clear();
  } else {
    print('Неверный выбор.');
    clearConsole();
    selectMembersToClanInput();
  }
  clearConsole();
}

void selectBattleLocationInput() {
  print('Выберите место для рекета:');
  for (int i = 0; i < battleLocations.length; i++) {
    print('${i + 1}. ${battleLocations[i].name}');
  }
  stdout.write('Ваш выбор: ');
  final locationInput = stdin.readLineSync();
  final locationIndex = int.tryParse(locationInput ?? '') ?? -1;
  if (locationIndex > 0 && locationIndex <= battleLocations.length) {
    final location = battleLocations[locationIndex - 1];
    print('Вы выбрали ${location.name}.');
    game.makeRacket(location);
  } else {
    print('Неверный выбор.');
    clearConsole();
    selectBattleLocationInput();
  }
}

void clearConsole() {
  if (Platform.isWindows) {
    print(Process.runSync("cls", [], runInShell: true).stdout);
  } else {
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
}
