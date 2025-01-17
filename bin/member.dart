enum MemberType {
  casual,
  boss,
}

class Member {
  final String name;
  final MemberType memberType;

  Member({
    required this.name,
    required this.memberType,
  });
}
