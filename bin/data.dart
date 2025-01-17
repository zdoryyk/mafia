import 'member.dart';
import 'clan.dart';
import 'batte_location.dart';

final List<BattleLocation> battleLocations = [
  BattleLocation(
    name: 'Bank',
    money: 50000,
  ),
  BattleLocation(
    name: 'Store',
    money: 10000,
  ),
  BattleLocation(
    name: 'Museum',
    money: 12000,
  ),
];

final List<Member> availableMembers = [
  Member(name: 'John', memberType: MemberType.casual),
  Member(name: 'Mike', memberType: MemberType.casual),
  Member(name: 'Sarah', memberType: MemberType.casual),
  Member(name: 'Fico', memberType: MemberType.casual),
  Member(name: 'Grisha', memberType: MemberType.casual),
];

final List<Member> membersForSecondClan = [
  Member(name: 'John', memberType: MemberType.casual),
  Member(name: 'Misha', memberType: MemberType.casual),
  Member(name: 'Mike', memberType: MemberType.casual),
  Member(name: 'Sarah', memberType: MemberType.casual),
  Member(name: 'Don', memberType: MemberType.boss),
];

final southLondonClan = Clan(
  name: 'South London Mafia',
  members: membersForSecondClan,
);
