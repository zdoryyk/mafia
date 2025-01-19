import 'worker.dart';

class Manager extends Worker {
  final List<Worker> workers;

  Manager({
    required this.workers,
    required super.name,
    required super.age,
    required super.sex,
    required super.salary,
    required super.posistion,
  });

  @override
  void increaseMotivation() {
    print('Okey, guys its time to work');
    for (var worker in workers) {
      if (worker is! Manager) {
        worker.increaseMotivation();
      }
    }
  }

  @override
  void work() {
    print('Okey, lets see new bugs and features from customers..');
  }
}
