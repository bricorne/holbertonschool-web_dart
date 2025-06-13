// 4-outer_inner.dart

void outer(String name, String id) {
  String inner() {
    var parts = name.split(' ');
    var firstName = parts[0];
    var lastName = parts[1];
    return "Hello Agent ${lastName[0]}.$firstName your id is $id";
  }

  print(inner());
}