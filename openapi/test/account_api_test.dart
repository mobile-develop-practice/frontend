import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AccountApi
void main() {
  final instance = Openapi().getAccountApi();

  group(AccountApi, () {
    // Update some details
    //
    //Future<User> accountPartialUpdate(User data) async
    test('test accountPartialUpdate', () async {
      // TODO
    });

    // Fetch Account Details
    //
    //Future<User> accountRead() async
    test('test accountRead', () async {
      // TODO
    });

    // Update all details
    //
    //Future<User> accountUpdate(User data) async
    test('test accountUpdate', () async {
      // TODO
    });

  });
}
