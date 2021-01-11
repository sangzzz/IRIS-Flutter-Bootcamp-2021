import 'dart:io';
import 'electives.dart';

void main() {
  int choice = 1;
  ElectivesList electives = ElectivesList();
  while (choice == 1) {
    print("Enter Type of user: 1. Admin, 2. Student.");
    int user = int.parse(stdin.readLineSync().toString());
    if (user == 1) {
      print('Enter Course Type: 1. Open, 2. Branch.');
      int course = int.parse(stdin.readLineSync().toString());

      if (course == 1) {
        print('Enter Course Name');
        String courseName = stdin.readLineSync().toString();
        print('Enter Course Code');
        String courseCode = stdin.readLineSync().toString();
        electives.addOpenElective(
          courseCode: courseCode,
          courseName: courseName,
        );
      } else {
        print('Enter Course Name');
        String courseName = stdin.readLineSync().toString();
        print('Enter Course Code');
        String courseCode = stdin.readLineSync().toString();
        print('Enter Branch');
        String branch = stdin.readLineSync().toString();
        print('Enter Year');
        int year = int.parse(stdin.readLineSync().toString());
        electives.addBranchElective(
          courseCode: courseCode,
          courseName: courseName,
          branch: branch,
          year: year,
        );
      }
    } else if (user == 2) {
      print('Enter branch');
      String branch = stdin.readLineSync().toString();
      print('Enter Year');
      int year = int.parse(stdin.readLineSync().toString());
      electives.listCourses(
        branch: branch,
        year: year,
      );
    } else {
      print('Wrong Input!');
    }
    print('Would you like to continue? [1/0]');
    choice = int.parse(stdin.readLineSync().toString());
    print('\n\n');
  }
}
