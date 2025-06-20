class User{
  int id;
	String name = "";
	int age = 0;
	double height = 0.0;

	User({required this.id,required this.name,required this.age,required this.height});

	Map<dynamic,dynamic> toJson(){
		var result = new Map<String,dynamic>();
    result["id"] = this.id;
		result["name"] = this.name;
		result["age"] = this.age;
		result["height"] = this.height;
		return result;
	}
  static User fromJson(Map<dynamic, dynamic> userJson){
    User user = User(id: userJson["id"], name: userJson["name"], age: userJson["age"], height: userJson["height"]);
    return user;
  }

  String toString(){
    return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})';
  }
}