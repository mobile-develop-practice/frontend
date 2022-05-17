# openapi.api.RefreshTokenApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/user*

Method | HTTP request | Description
------------- | ------------- | -------------
[**refreshTokenCreate**](RefreshTokenApi.md#refreshtokencreate) | **POST** /refresh-token/ | 


# **refreshTokenCreate**
> TokenRefresh refreshTokenCreate(data)



Process request to generate new access token using refresh token.

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api = Openapi().getRefreshTokenApi();
final TokenRefresh data = ; // TokenRefresh | 

try {
    final response = api.refreshTokenCreate(data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RefreshTokenApi->refreshTokenCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**TokenRefresh**](TokenRefresh.md)|  | 

### Return type

[**TokenRefresh**](TokenRefresh.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

