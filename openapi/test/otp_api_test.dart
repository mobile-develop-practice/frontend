import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OtpApi
void main() {
  final instance = Openapi().getOtpApi();

  group(OtpApi, () {
    // Overrides post method to validate serialized data
    //
    //Future otpCreate() async
    test('test otpCreate', () async {
      // TODO
    });

  });
}
