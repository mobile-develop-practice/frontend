import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for RegisterApi
void main() {
  final instance = Openapi().getRegisterApi();

  group(RegisterApi, () {
    // Register View
    //
    // Register a new user to the system. The data required are username, email, name, password and mobile (optional).
    //
    //Future<User> registerCreate(User data) async
    test('test registerCreate', () async {
      // TODO
    });

  });
}
