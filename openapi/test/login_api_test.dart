import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for LoginApi
void main() {
  final instance = Openapi().getLoginApi();

  group(LoginApi, () {
    // Process a login request via username/password.
    //
    //Future loginCreate() async
    test('test loginCreate', () async {
      // TODO
    });

  });
}
