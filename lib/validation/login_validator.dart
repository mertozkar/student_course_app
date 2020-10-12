class LoginValidationMixin {
  String validateUserName(String value) {
    if (value.length < 2) {
      return "Kullanıcı adı en az iki karakter olmalıdır.";
    }
  }

  String validateUserPassword(String value) {
    if (value.length < 2) {
      return "Şifre en az iki karakter olmalıdır.";
    }
  }
}
