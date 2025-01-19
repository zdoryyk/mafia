import 'company.dart';
import 'worker.dart';
import 'programmer.dart';
import 'designer.dart';
import 'tester.dart';

void main() {
  final List<Worker> workers = [
    Programmer(
        name: 'Danya',
        age: '20',
        sex: Sex.male,
        salary: '0\$',
        posistion: 'Flutter Developer'),
    Tester(
        name: 'Dima',
        age: '20',
        sex: Sex.male,
        salary: '1000',
        posistion: 'Junior Tester'),
    Designer(
        name: 'Anna',
        age: '22',
        sex: Sex.female,
        salary: '1200',
        posistion: 'Junior Web Designer'),
  ];

  final Company google = Company(title: 'Google', workers: workers);
}
