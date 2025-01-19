// import 'package:test/test.dart';
// import '../bin/member.dart';
// import '../bin/clan.dart';
// import '../bin/mafia_game.dart';

// void main() {
//   group('Member', () {
//     test('Default memberType is casual', () {
//       final member = Member(name: 'John');
//       expect(member.memberType, MemberType.casual);
//     });

//     test('Explicit boss memberType', () {
//       final member = Member(name: 'BossMan', memberType: MemberType.boss);
//       expect(member.memberType, MemberType.boss);
//     });
//   });

//   group('Clan', () {
//     test('Clan initializes with a boss', () {
//       final members = [
//         Member(name: 'John'),
//         Member(name: 'BossMan', memberType: MemberType.boss),
//       ];
//       final clan = Clan(name: 'Test Clan', members: members);
//       expect(clan.boss.name, 'BossMan');
//     });

//     test('Default boss is created if none provided', () {
//       final members = [
//         Member(name: 'John'),
//       ];
//       final clan = Clan(name: 'Test Clan', members: members);
//       expect(clan.boss.name, 'Don');
//     });

//     test('Clan initializes money to default value', () {
//       final clan = Clan(name: 'Test Clan', members: []);
//       expect(clan.money, 0);
//     });
//   });

//   // group('MafiaGame', () {
//   //   test('Add member to clan', () {
//   //     // final game = MafiaGame();
//   //     final member = Member(name: 'New Member');
//   //     game.addMemberToClan(member);
//   //     expect(game.mainClan.members.length, 2);
//   //     expect(game.mainClan.members[1].name, 'New Member');
//   //   });

//   //   test('Add multiple members to clan', () {
//   //     final game = MafiaGame();
//   //     final members = [
//   //       Member(name: 'John'),
//   //       Member(name: 'Sarah'),
//   //     ];
//   //     game.addMembersToClan(members);
//   //     expect(game.mainClan.members.length, 3);
//   //   });
//   // });
// }
