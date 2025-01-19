import 'clan.dart';
import 'member.dart';
import 'batte_location.dart';

class MafiaGame {
  final Clan mainClan;

  MafiaGame({required this.mainClan});

  void printInfoAboutClan() {
    print('-------------------------');
    print('Вы глава мафии ${mainClan.name}');
    if (mainClan.members.isEmpty) {
      print('Пока вы не имеете участников');
    } else {
      print('Участники группы:');
      for (var member in mainClan.members) {
        print(
            '- ${member.name} (${member.memberType == MemberType.boss ? 'Boss' : 'Casual'})');
      }
    }
    print('Баланс клана: ${mainClan.money}');
    print('-------------------------\n');
  }

  void makeRacket(BattleLocation location) {
    mainClan.makeRacket(location);
  }

  void addMemberToClan(Member memberToAdd) {
    mainClan.addMemberToClan(memberToAdd);
  }

  void addMembersToClan(List<Member> members) {
    mainClan.addMembersToClan(members);
  }
}
