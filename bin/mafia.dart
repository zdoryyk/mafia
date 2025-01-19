import 'member.dart';
import 'dart:io';
import 'mafia_game.dart';
import 'data.dart';
import 'clan.dart';
import 'console_utils.dart';

late Clan mainClan;
late MafiaGame game;

void main() {
  startup();
  ConsoleUtils.clearConsole();
  mainClan.clearMembers();
  game = MafiaGame(mainClan: mainClan);
  menu();
}

void startup() {
  ConsoleUtils.clearConsole();
  print('Выберите клан который бы вы хотели возглавлять');
  while (true) {
    print('Выберите клан:');
    print('1. Восточный Лондон');
    print('2. Северный Лондон');
    print('3. Западный Лондон');
    print('4. Южный Лондон');
    print('5. Я Ирландец!');
    print('6. Выйти');
    final input = ConsoleUtils.getUserInput().toString();
    switch (input) {
      case '1':
        mainClan = eastLondonClan;
        return;
      case '2':
        mainClan = northLondonClan;
        return;
      case '3':
        mainClan = westLondonClan;
        return;
      case '4':
        mainClan = southLondonClan;
        return;
      case '5':
        mainClan = irishClan;
        return;
      case '6':
        print('Выход из программы.');
        return;
      default:
        print('Неверный ввод. Попробуйте еще раз.');
    }
  }
}

void menu() {
  battleLocations = battleLocations
      .where((location) => location.region != mainClan.region)
      .toList();
  while (true) {
    print('Меню:');
    print('1. Мой клан');
    print('2. Набрать людей в клан');
    print('3. Рекет');
    print('4. Выйти');

    final input = ConsoleUtils.getUserInput().toString();
    switch (input) {
      case '1':
        ConsoleUtils.clearConsole();
        game.printInfoAboutClan();
        break;
      case '2':
        ConsoleUtils.clearConsole();
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
        '${i + 1}. ${availableMembers[i].name} ${Member.regionToString(availableMembers[i].region)}');
  }
  print(
      '${availableMembers.length + 1}. Добавить всех возможный ${Member.regionToString(mainClan.region)}');
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
    ConsoleUtils.clearConsole();
    selectMembersToClanInput();
  }
  ConsoleUtils.clearConsole();
}

void selectBattleLocationInput() {
  print('Выберите место для рекета:');

  ConsoleUtils.displayBattleLocations();

  final locationIndex = ConsoleUtils.getUserInput();

  if (locationIndex > 0 && locationIndex <= battleLocations.length) {
    final location = battleLocations[locationIndex - 1];
    print('Вы выбрали ${location.name}.');
    game.makeRacket(location);
  } else {
    ConsoleUtils.clearConsole();
    print('Неверный выбор.');
    selectBattleLocationInput();
  }
}
