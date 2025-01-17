import 'member.dart';

class Clan {
  final String name;
  final List<Member> members;
  final Member boss;
  int money;

  Clan({
    required this.name,
    required this.members,
    this.money = 0,
  }) : boss = members.firstWhere(
            (member) => member.memberType == MemberType.boss,
            orElse: () => Member(name: 'Don', memberType: MemberType.boss));

  void addMoney(int moneyToAdd) {
    money += moneyToAdd;
  }
}
