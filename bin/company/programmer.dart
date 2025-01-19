import 'worker.dart';

class Programmer extends Worker {
  Programmer({
    required super.name,
    required super.age,
    required super.sex,
    required super.salary,
    required super.posistion,
  });

  @override
  void work() {
    if (motivation >= 60) {
      print('Writes well code');
    } else if (motivation >= 30 && motivation <= 59) {
      print('Writes normal code');
    } else {
      print('Writes ugly code');
    }
  }

  @override
  void increaseMotivation() {
    print('Please do not motivate me, ur doing only worse');
    setMotivation = -30;
  }
}
