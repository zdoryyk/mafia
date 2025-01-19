import 'member.dart';
import 'clan.dart';
import 'batte_location.dart';

final List<Member> availableMembers = [
  Member(name: 'John', region: Region.east),
  Member(name: 'Mike', region: Region.irish),
  Member(name: 'Sarah', region: Region.north),
  Member(name: 'Fico', region: Region.south),
  Member(name: 'Grisha', region: Region.west),
  Member(name: 'Petya', region: Region.east),
  Member(name: 'Dakey', region: Region.irish),
  Member(name: 'Paul', region: Region.north),
  Member(name: 'Jacob', region: Region.west)
];

List<BattleLocation> battleLocations = [
  BattleLocation(
    name: 'South Bank',
    money: 50000,
    region: Region.south,
  ),
  BattleLocation(
    name: 'North Store',
    money: 10000,
    region: Region.north,
  ),
  BattleLocation(
    name: 'East Museum',
    money: 12000,
    region: Region.east,
  ),
  BattleLocation(
    name: 'West Market',
    money: 12000,
    region: Region.west,
  ),
];

final List<Member> southLondonMembers = [
  Member(name: 'Fico', region: Region.south),
  Member(name: 'Liam', region: Region.south),
  Member(name: 'Sophia', region: Region.south),
  Member(name: 'Ella', region: Region.south),
  Member(name: 'Mason', region: Region.south),
  Member(name: 'Don', region: Region.south, memberType: MemberType.boss),
];

final List<Member> northLondonMembers = [
  Member(name: 'Sarah', region: Region.north),
  Member(name: 'Paul', region: Region.north),
  Member(name: 'Alice', region: Region.north),
  Member(name: 'Henry', region: Region.north),
  Member(name: 'Grace', region: Region.north),
  Member(name: 'Don', region: Region.north, memberType: MemberType.boss),
];

final List<Member> westLondonMembers = [
  Member(name: 'Grisha', region: Region.west),
  Member(name: 'Jacob', region: Region.west),
  Member(name: 'Emma', region: Region.west),
  Member(name: 'Oliver', region: Region.west),
  Member(name: 'Noah', region: Region.west),
  Member(name: 'Don', region: Region.west, memberType: MemberType.boss),
];

final List<Member> eastLondonMembers = [
  Member(name: 'John', region: Region.east),
  Member(name: 'Petya', region: Region.east),
  Member(name: 'Lucas', region: Region.east),
  Member(name: 'Ella', region: Region.east),
  Member(name: 'Sophia', region: Region.east),
  Member(name: 'Don', region: Region.east, memberType: MemberType.boss),
];

final List<Member> irishMembers = [
  Member(name: 'Mike', region: Region.irish),
  Member(name: 'Dakey', region: Region.irish),
  Member(name: 'Connor', region: Region.irish),
  Member(name: 'Aoife', region: Region.irish),
  Member(name: 'Niamh', region: Region.irish),
  Member(name: 'Don', region: Region.irish, memberType: MemberType.boss),
];

final southLondonClan = Clan(
    name: 'South London Mafia',
    region: Region.south,
    members: southLondonMembers);
final northLondonClan = Clan(
    name: 'North London Mafia',
    region: Region.north,
    members: northLondonMembers);
final westLondonClan = Clan(
    name: 'West London Mafia', region: Region.west, members: westLondonMembers);
final eastLondonClan = Clan(
    name: 'East London Mafia', region: Region.east, members: eastLondonMembers);
final irishClan =
    Clan(name: 'Irish Clan', region: Region.irish, members: irishMembers);
