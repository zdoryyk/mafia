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
  int _motivation = 50;

  Worker({
    required this.name,
    required this.age,
    required this.sex,
    required this.salary,
    required this.posistion,
  });

  void work();

  void increaseMotivation();

  int get motivation => _motivation;

  set setMotivation(int motivation) {
    _motivation += motivation;
    if (_motivation > 100) {
      _motivation = 100;
    }
    if (_motivation < 0) {
      _motivation = 0;
    }
  }
}
