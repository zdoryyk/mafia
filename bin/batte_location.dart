import 'clan.dart';
import 'member.dart';
import 'dart:math';
import 'data.dart';

final random = Random();

class BattleLocation {
  final String name;
  Clan? attackers;
  final Clan guard;
  final int money;

  BattleLocation({
    required this.name,
    this.attackers,
    required this.money,
  }) : guard = southLondonClan;

  bool fight() {
    if (attackers == null) {
      print('Сражение невозможно: не определены атакующие');
      return false;
    }

    print(
        'Место битвы $name, Аттакующие ${attackers!.name}, На защите ${guard.name}');

    final shuffledAttackers = List.of(attackers!.members)..shuffle(random);
    final shuffledGuards = List.of(guard.members)..shuffle(random);

    int attackerScore = 0;
    int guardScore = 0;

    for (int i = 0;
        i < shuffledAttackers.length && i < shuffledGuards.length;
        i++) {
      final attacker = shuffledAttackers[i];
      final defender = shuffledGuards[i];

      bool attackerWins = _fightBetweenMembers(attacker, defender);

      if (attackerWins) {
        attackerScore++;
      } else {
        guardScore++;
      }
    }

    final winner = attackerScore > guardScore ? attackers : guard;
    print('Победила команда: ${winner!.name}');

    if (winner == attackers) {
      print('${attackers!.name} забрали $money денег!\n');
      return true;
    }

    print('${guard.name} защитили свои $money денег!\n');
    return false;
  }

  bool _fightBetweenMembers(Member attacker, Member defender) {
    return random.nextInt(100) < _calculateChanceToWin(attacker, defender);
  }

  int _calculateChanceToWin(Member attacker, Member defender) {
    if (attacker.memberType == MemberType.boss &&
        defender.memberType == MemberType.casual) {
      return 65;
    }
    if (attacker.memberType == MemberType.boss &&
        defender.memberType == MemberType.boss) {
      return 50;
    }
    if (attacker.memberType == MemberType.casual &&
        defender.memberType == MemberType.casual) {
      return 50;
    }
    return 35;
  }
}
