import 'worker.dart';

class Manager extends Worker {
  Manager({
    required super.name,
    required super.age,
    required super.sex,
    required super.salary,
    required super.posistion,
  });

  @override
  void increaseMotivation() {
    print('Okey, guys its time to work');
    setMotivation = 20;
  }

  void motivateWorker(Worker worker) {
    print('Окей, ${worker.name}, time to work!');
    worker.increaseMotivation();
  }

  @override
  void work() {
    print('Okey, lets see new bugs and features from customers..');
  }
}
