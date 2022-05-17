import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PasswordApi
void main() {
  final instance = Openapi().getPasswordApi();

  group(PasswordApi, () {
    // Overrides post method to validate OTP and reset password
    //
    //Future passwordResetCreate() async
    test('test passwordResetCreate', () async {
      // TODO
    });

  });
}
