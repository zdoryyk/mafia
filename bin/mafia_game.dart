import 'clan.dart';
import 'member.dart';
import 'batte_location.dart';

class MafiaGame {
  final Clan northLondonClan;
  List<Member>? members;

  MafiaGame({
    this.members,
  }) : northLondonClan = Clan(
          name: 'North London Mafia',
          members: [Member(name: 'Don', memberType: MemberType.boss)],
        );

  void printInfoAboutClan() {
    print('-------------------------');
    print('Вы глава мафии ${northLondonClan.name}');
    if (northLondonClan.members.isEmpty) {
      print('Пока вы не имеете участников');
    } else {
      print('Участники группы:');
      for (var member in northLondonClan.members) {
        print(
            '- ${member.name} (${member.memberType == MemberType.boss ? 'Boss' : 'Casual'})');
      }
    }
    print('Баланс клана: ${northLondonClan.money}');
    print('-------------------------\n');
  }

  void makeRacket(BattleLocation location) {
    location.attackers = northLondonClan;
    bool isWinner = location.fight();
    if (isWinner) {
      northLondonClan.addMoney(location.money);
    }
  }

  void addMemberToClan(Member memberToAdd) {
    northLondonClan.members.add(memberToAdd);
  }

  void addMembersToClan(List<Member> members) {
    northLondonClan.members.addAll(members);
  }
}
