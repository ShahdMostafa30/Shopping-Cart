class Validations {
  static String? validateFullName(String? name) {
    if (name == null || name.isEmpty) {
      return 'Full Name is required';
    }
    if (!RegExp(r'^[A-Z]').hasMatch(name)) {
      return 'The first character must be capital';
    }
    return null;
  }

  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    ).hasMatch(email)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? validatePassword(String? pass) {
    if (pass == null || pass.isEmpty) {
      return 'Password is required';
    }
    if (pass.length < 6) {
      return 'Password must be at least 6 charachters';
    }
    return null;
  }

  static String? validateConfirmPass(String? confirmPass, String? pass) {
    if (confirmPass == null || confirmPass.isEmpty) {
      return 'Confirm Password is required';
    }
    if (confirmPass != pass) {
      return 'Passwords must match';
    }
    return null;
  }
}
