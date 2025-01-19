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
    print('Designing..');
  }
}
