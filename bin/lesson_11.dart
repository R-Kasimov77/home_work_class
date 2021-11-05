void main(List<String> arguments) {
// // 1) Country -  класс имеет поле название, климат (метод должен принтовать название место и климат)
  Country weather = Country(name: "bishkek", climate: -3);
  weather.printName();
// // 2) Car -  имеет поле мощность, цвет, название, цена (метод должен принтовать характеристики машины
  Cars car = Cars(name: "mers", color: "black", volume: 6.3, price: 40000);
  car.printName();
  //3
  Student faruh = Student(name: "Faruh", surname: "abdusatarov", year: 2021);
  faruh.getCourse(faruh.year ?? 0);
  Student ravshan = Student(name: "Ravshan", surname: "Kasimov", year: 2019);
  ravshan.getCourse(ravshan.year ?? 0); 
  ravshan.getFullName(ravshan.name ?? "",ravshan.surname ?? "");
  ravshan.getFullNameAndCourse( ravshan.year ?? 0, ravshan.name ?? "", ravshan.surname ?? "");
}

// 1
class Country {
  final String? name;
  final int? climate;
  printName() {
    print("Name is $name, climate $climate");
  }

  Country({this.name, this.climate});
}

// 2
class Cars {
  final double? volume;
  final String? name;
  final String? color;
  final int? price;
  printName() {
    print(
        "name is $name, volume is $volume, color is $color, price is $price euro");
  }

  Cars({this.volume, this.name, this.color, this.price});
}

class Student extends User {
  final String? name;
  final String? surname;
  final int? year;

  Student({this.name, this.surname, this.year});

  @override
  getCourse(int year) {
    int result = DateTime.now().year - year;
    if (result == 0){
      result = 1; 
    }
    print("$result kurs");
  }

  @override
  getFullName(String name, String surname) {
    print("$surname $name");
  }

  @override
  getFullNameAndCourse(int year, String name, String surname) {
    int result = DateTime.now().year - year; 
    if (result == 0){
      result = 1; 
    }
   print("$surname $name $result kurs"); 
  }
}

abstract class User {
  getFullName(String name, String surname);
  getCourse(int year);
  getFullNameAndCourse(int year, String name, String surname); 
}




// Student ravshan = Student(name: "ravshan", age: 18, sound: "yahaaa");
// ravshan.printName();
// }
// class Student {
// final String? name;
// final int? age;
// final String? sound;
// printName(){
//   print("Name is $name, age is $age");
// }

//   Student({this.name, this.age, this.sound}); 


