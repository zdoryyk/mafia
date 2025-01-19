enum Sex {
  male,
  female,
}

abstract class Worker {
  final String name;
  final String age;
  final Sex sex;
  final String salary;
  final String posistion;

  Worker({
    required this.name,
    required this.age,
    required this.sex,
    required this.salary,
    required this.posistion,
  });

  void work();
}
