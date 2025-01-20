import 'worker.dart';

class Designer extends Worker {
  Designer({
    required super.name,
    required super.age,
    required super.sex,
    required super.salary,
    required super.posistion,
  });

  @override
  void work() {
    if (motivation >= 60) {
      print('Figma done');
    } else if (motivation >= 30 && motivation <= 59) {
      print('still working on it');
    } else {
      print('tired..');
    }
  }

  @override
  void increaseMotivation() {
    print('Okey, lets redesign it');
    setMotivation = 30;
  }
}
