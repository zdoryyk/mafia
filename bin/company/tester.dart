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
    print('Testing hello world!');
  }
}
