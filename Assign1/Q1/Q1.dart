import 'dart:io';

class Users {
  Map<String, String> _users = {
    'Alice': '1234',
    'Bob': '4321',
    'Carol': '9876',
  };
  bool checkLogin(String username, String password) {
    print('Loading... Please wait...\n\n');
    // Delay of 10sec
    sleep(Duration(seconds: 10));
    for (String user in _users.keys) {
      if (user == username) {
        if (_users[user] == password) {
          return true;
        } else {
          print('Wrong Password');
          exit(0);
        }
      }
    }
    return false;
  }
}

void main() {
  print('Enter Username: ');
  var user = stdin.readLineSync();
  print("Enter Password: ");
  var pass = stdin.readLineSync();
  print(Users().checkLogin(user.toString(), pass.toString())
      ? 'Login Successful'
      : 'User doesn\'t exist');
}
