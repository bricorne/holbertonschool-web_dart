
class Password {
    String _password = "";


    Password({String password = ""}){
      this._password = password;
    }

    bool isValid(){
      if (_password.length < 8 || _password.length > 16){
        return false;
      }
      return _password.contains(RegExp(r'[a-z]')) && _password.contains(RegExp(r'[A-Z]')) && _password.contains(RegExp(r'\d'));
    }

    @override
  String toString(){
    return "Your Password is: $_password";
  }
}