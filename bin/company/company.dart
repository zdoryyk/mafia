import 'worker.dart';

class Company {
  final String title;
  final List<Worker> workers;

  Company({
    required this.title,
    required this.workers,
  });

  void whatWorkersDo() {
    for (var worker in workers) {
      worker.work();
    }
  }
}
