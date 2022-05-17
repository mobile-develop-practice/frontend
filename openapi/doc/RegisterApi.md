# openapi.api.RegisterApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8000/api/user*

Method | HTTP request | Description
------------- | ------------- | -------------
[**registerCreate**](RegisterApi.md#registercreate) | **POST** /register/ | Register View


# **registerCreate**
> User registerCreate(data)

Register View

Register a new user to the system. The data required are username, email, name, password and mobile (optional).

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: Basic
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('Basic').password = 'YOUR_PASSWORD';

final api = Openapi().getRegisterApi();
final User data = ; // User | 

try {
    final response = api.registerCreate(data);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RegisterApi->registerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**User**](User.md)|  | 

### Return type

[**User**](User.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

