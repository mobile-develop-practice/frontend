# openapi.api.OtpregloginApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/user*

Method | HTTP request | Description
------------- | ------------- | -------------
[**otpregloginCreate**](OtpregloginApi.md#otpreglogincreate) | **POST** /otpreglogin/ | 


# **otpregloginCreate**
> otpregloginCreate()



Overrides post method to validate serialized data

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api = Openapi().getOtpregloginApi();

try {
    api.otpregloginCreate();
} catch on DioError (e) {
    print('Exception when calling OtpregloginApi->otpregloginCreate: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

