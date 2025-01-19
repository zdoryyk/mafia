import 'member.dart';
import 'clan.dart';

mixin FightConsoleUtils {
  void logBattleLocation(String locationName, Clan attackers, Clan guard) {
    print(
        'Место битвы $locationName, Аттакующие ${attackers.name}, На защите ${guard.name}');
    print('Атакующие:');
    for (var member in attackers.members) {
      print(
          '- ${member.name} (${Member.memberTypeToString(member.memberType)})');
    }
    print('На защите:');
    for (var member in guard.members) {
      print(
          '- ${member.name} (${Member.memberTypeToString(member.memberType)})');
    }
    print('\n');
  }

  void logCurrentFight(Member attacker, Member guard, bool isAttackerWin) {
    print('${attacker.toString()} перестреливается с ${guard.toString()}');
    if (isAttackerWin) {
      print('Нападающий победил');
    } else {
      print('Защитник победил');
    }
    print('\n');
  }
}
