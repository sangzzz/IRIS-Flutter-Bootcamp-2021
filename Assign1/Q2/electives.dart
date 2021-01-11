class BranchElective {
  String courseName, courseCode, branch;
  int year;
  BranchElective({
    required this.branch,
    required this.courseName,
    required this.courseCode,
    required this.year,
  });
}

class OpenElective {
  String courseName, courseCode;
  OpenElective({
    required this.courseName,
    required this.courseCode,
  });
}

class ElectivesList {
  List<BranchElective> _branchElectives = [
    BranchElective(
      branch: 'CS',
      courseCode: 'CS300',
      courseName: 'Software Engineering',
      year: 3,
    ),
    BranchElective(
      branch: 'CS',
      courseCode: 'CS301',
      courseName: 'Networks',
      year: 3,
    ),
    BranchElective(
      branch: 'CS',
      courseCode: 'CS251',
      courseName: 'DBMS',
      year: 2,
    ),
  ];
  List<OpenElective> _openElectives = [
    OpenElective(
      courseCode: 'MA110',
      courseName: 'Discrete Mathematics',
    ),
    OpenElective(
      courseCode: 'SM100',
      courseName: 'Professional Communication',
    ),
  ];
  void listCourses({required String branch, required int year}) {
    print('BRANCH ELECTIVES');
    for (var course in _branchElectives) {
      if (course.branch == branch && course.year == year) {
        print('${course.courseName}\t${course.courseCode}');
      }
    }
    print('\n');
    print('OPEN ELECTIVES');
    for (var course in _openElectives) {
      print('${course.courseName}\t${course.courseCode}');
    }
    print('\n');
  }

  void addOpenElective({
    required String courseCode,
    required String courseName,
  }) {
    _openElectives.add(
      OpenElective(
        courseCode: courseCode,
        courseName: courseName,
      ),
    );
  }

  void addBranchElective({
    required String courseCode,
    required String courseName,
    required String branch,
    required int year,
  }) {
    _branchElectives.add(
      BranchElective(
        courseCode: courseCode,
        courseName: courseName,
        branch: branch,
        year: year,
      ),
    );
  }
}
