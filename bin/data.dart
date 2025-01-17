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
  Member(name: 'John'),
  Member(name: 'Mike'),
  Member(name: 'Sarah'),
  Member(name: 'Fico'),
  Member(name: 'Grisha')
];

final List<Member> membersForSecondClan = [
  Member(name: 'John'),
  Member(name: 'Misha'),
  Member(name: 'Mike'),
  Member(name: 'Sarah'),
  Member(name: 'Don', memberType: MemberType.boss),
];

final southLondonClan = Clan(
  name: 'South London Mafia',
  members: membersForSecondClan,
);
