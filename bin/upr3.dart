import 'lesson_11.dart';

void main(List<String> args) {
Student ravshan = Student(name: "ravshan", surname: "kasimov", year: 2019 ); 
ravshan.getFullName(ravshan.name ?? "", ravshan.surname ?? ""); 
ravshan.getcourse(ravshan.year ?? 0);
}

class Student extends User{
  final String? name; 
  final String? surname; 
  final int? year;

  Student({this.name, this.surname, this.year}); 

  @override
  getFullName(String name, String surname) {
  print("$surname $name"); 
  }

  @override
  getcourse(int year) {
  int result = DateTime.now().year - year; 
  if (result == 0){
    result = 1; 
  }
  print("$result kurs"); 
  }

}


abstract class User{
getcourse(int year);
getFullName(String surname, String name);
}