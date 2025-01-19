enum MemberType {
  casual,
  boss,
}

enum Region { west, east, south, north, irish }

class Member {
  final String name;
  final MemberType memberType;
  final Region region;

  Member({
    required this.name,
    required this.region,
    this.memberType = MemberType.casual,
  });

  static String regionToString(Region region) {
    Map<Region, String> regionMap = {
      Region.west: '(West Region)',
      Region.east: '(East Region)',
      Region.south: '(South Region)',
      Region.north: '(North Region)',
      Region.irish: '(Irish Region)',
    };
    return regionMap[region] ?? '(Not Defined Region)';
  }

  static String memberTypeToString(MemberType memberType) {
    Map<MemberType, String> memberTypes = {
      MemberType.casual: 'Casual',
      MemberType.boss: 'Boss',
    };
    return memberTypes[memberType] ?? '(Unknown)';
  }

  @override
  String toString() {
    return '$name(${memberTypeToString(memberType)}, ${regionToString(region)})';
  }
}
