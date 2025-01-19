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
    print('Im coding Hello World!');
  }
}
