import 'worker.dart';

enum ProgrammerLevel { junior, middle, senior, lead }

abstract class Developer extends Worker {
  final ProgrammerLevel level;
  Developer({
    required this.level,
    required super.name,
    required super.age,
    required super.sex,
    required super.salary,
    required super.posistion,
  });

  String levelToString(ProgrammerLevel level) {
    Map<ProgrammerLevel, String> levelToStr = {
      ProgrammerLevel.junior: 'junior',
      ProgrammerLevel.middle: 'middle',
      ProgrammerLevel.senior: 'senior',
      ProgrammerLevel.lead: 'lead',
    };
    return levelToStr[level] ?? 'unknown';
  }

  @override
  void work() {
    if (motivation >= 60) {
      print('Writes ${levelToString(level)}s well code');
    } else if (motivation >= 30 && motivation <= 59) {
      print('Writes ${levelToString(level)}s normal code');
    } else {
      print('Writes ${levelToString(level)}s ugly code');
    }
  }

  @override
  void increaseMotivation() {
    print('Please do not motivate me, ur doing only worse');
    setMotivation = -30;
  }
}

class KotlinDeveloper extends Developer {
  KotlinDeveloper({
    required super.level,
    required super.name,
    required super.age,
    required super.sex,
    required super.salary,
    required super.posistion,
  });

  @override
  void work() {
    print('Kotlin Developer');
    super.work();
  }
}

class JavaDeveloper extends Developer {
  JavaDeveloper({
    required super.level,
    required super.name,
    required super.age,
    required super.sex,
    required super.salary,
    required super.posistion,
  });

  @override
  void work() {
    print('Java Developer');
    super.work();
  }
}

class DartDeveloper extends Developer {
  DartDeveloper({
    required super.level,
    required super.name,
    required super.age,
    required super.sex,
    required super.salary,
    required super.posistion,
  });

  @override
  void work() {
    print('Dart Developer');
    super.work();
  }
}
