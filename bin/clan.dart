import 'member.dart';
import 'batte_location.dart';

mixin AbleToAdd {
  bool ableToAddAllMembers(Region region) {
    final Map<Region, bool> permissions = {
      Region.irish: true,
    };
    return permissions[region] ?? false;
  }
}

class Clan with AbleToAdd {
  final String name;
  final Region region;
  List<Member> members;
  final Member boss;
  int money;

  Clan({
    required this.name,
    required this.region,
    List<Member>? members,
    this.money = 0,
  })  : members = members ?? [],
        boss = (members ?? []).firstWhere(
          (member) => member.memberType == MemberType.boss,
          orElse: () => Member(
              name: 'Don', memberType: MemberType.boss, region: Region.irish),
        );

  void addMoney(int moneyToAdd) {
    money += moneyToAdd;
  }

  void makeRacket(BattleLocation location) {
    location.attackers = this;
    bool isWinner = location.fight();
    if (isWinner) {
      addMoney(location.money);
    }
  }

  void addMemberToClan(Member memberToAdd) {
    if(memberToAdd.region == region || ableToAddAllMembers(region)){
      members.add(memberToAdd);
    }
  }

  void addMembersToClan(List<Member> membersToAdd) {
    for (var newMember in membersToAdd) {
      if (newMember.region == region || ableToAddAllMembers(region)) {
        members.add(newMember);
      }
    }
  }

  void clearMembers() {
    members = members.where((member) => member == boss).toList();
  }
}
