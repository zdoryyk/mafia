import 'worker.dart';

class Tester extends Worker {
  Tester({
    required super.name,
    required super.age,
    required super.sex,
    required super.salary,
    required super.posistion,
  });

  @override
  void work() {
    if (motivation >= 60) {
      print('testing');
    } else if (motivation >= 30 && motivation <= 59) {
      print('needs coffee..');
    } else {
      print('tired...');
    }
  }

  @override
  void increaseMotivation() {
    print('lets retest');
    setMotivation = 30;
  }
}
