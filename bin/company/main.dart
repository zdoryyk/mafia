import 'workers.dart';

void main() {
  Developer juniorKotlinDeveloper = KotlinDeveloper(
    level: ProgrammerLevel.junior,
    name: 'Adil',
    age: '21',
    sex: Sex.male,
    salary: '800',
    posistion: 'JuniorKotlinDeveloper',
  );
  juniorKotlinDeveloper.work();
}
