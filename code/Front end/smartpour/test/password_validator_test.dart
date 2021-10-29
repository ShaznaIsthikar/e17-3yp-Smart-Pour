import 'package:flutter_test/flutter_test.dart';
import 'package:smartpour/utilities/form_validators.dart';
void main() {
  test('Empty Password', () {
    String? result = passwordValidator('');
    expect(result, "Password can't be empty");
  });
  
  test('Valid Password', () {
    String? result = passwordValidator('Password');
    expect(result, null);
  });
}