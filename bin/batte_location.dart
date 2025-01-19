import 'clan.dart';
import 'member.dart';
import 'dart:math';
import 'data.dart';
import 'fight_console_utils.dart';

final random = Random();

class BattleLocation with FightConsoleUtils {
  final String name;
  Clan? attackers;
  final Clan guard;
  final int money;
  final Region region;

  BattleLocation({
    required this.name,
    this.attackers,
    required this.money,
    required this.region,
  }) : guard = southLondonClan;

  bool fight() {
    if (attackers == null) {
      print('Сражение невозможно: не определены атакующие');
      return false;
    }

    logBattleLocation(name, attackers!, guard);

    final shuffledAttackers = List.of(attackers!.members)..shuffle(random);
    final shuffledGuards = List.of(guard.members)..shuffle(random);

    int attackerIndex = 0;
    int guardIndex = 0;

    while (attackerIndex < shuffledAttackers.length &&
        guardIndex < shuffledGuards.length) {
      final attacker = shuffledAttackers[attackerIndex];
      final defender = shuffledGuards[guardIndex];

      bool attackerWins = _fightBetweenMembers(attacker, defender);

      if (attackerWins) {
        guardIndex++;
      } else {
        attackerIndex++;
      }
    }

    final winner = attackerIndex < shuffledAttackers.length ? attackers : guard;

    print('Победила команда: ${winner!.name}');

    if (winner == attackers) {
      print('${attackers!.name} забрали $money баксов!\n');
      return true;
    }

    print('${guard.name} защитили свои $money баксов!\n');
    return false;
  }

  bool _fightBetweenMembers(Member attacker, Member defender) {
    bool isAttackerWin =
        random.nextInt(100) < _calculateChanceToWin(attacker, defender);
    logCurrentFight(attacker, defender, isAttackerWin);
    return isAttackerWin;
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
