import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for IsuniqueApi
void main() {
  final instance = Openapi().getIsuniqueApi();

  group(IsuniqueApi, () {
    // Overrides post method to validate serialized data
    //
    //Future isuniqueCreate() async
    test('test isuniqueCreate', () async {
      // TODO
    });

  });
}
