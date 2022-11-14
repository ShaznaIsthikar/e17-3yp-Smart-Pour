
import 'package:flutter_test/flutter_test.dart';
import 'package:smartpour/utilities/form_validators.dart';
void main() {
  test('Empty Email', () {
    String? result = emailValidator('');
    expect(result, "Email can't be empty");
  });
  test('Invalid Email', () {
    String? result = emailValidator('abcde');
    expect(result, "Enter correct email");
  });
  test('Valid Email', () {
    String? result = emailValidator('abcde@gmail.com');
    expect(result, null);
  });
}