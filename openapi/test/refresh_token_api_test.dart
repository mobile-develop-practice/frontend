import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for RefreshTokenApi
void main() {
  final instance = Openapi().getRefreshTokenApi();

  group(RefreshTokenApi, () {
    // Process request to generate new access token using refresh token.
    //
    //Future<TokenRefresh> refreshTokenCreate(TokenRefresh data) async
    test('test refreshTokenCreate', () async {
      // TODO
    });

  });
}
