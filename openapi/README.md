# openapi (EXPERIMENTAL)
This Django User Model is customised user model keeping in mind the practical need.

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Build package: org.openapitools.codegen.languages.DartDioNextClientCodegen

## Requirements

* Dart 2.12.0 or later OR Flutter 1.26.0 or later
* Dio 4.0.0+

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  openapi: 1.0.0
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  openapi:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  openapi:
    path: /path/to/openapi
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/openapi.dart';


final api = Openapi().getAccountApi();
final User data = ; // User | 

try {
    final response = await api.accountPartialUpdate(data);
    print(response);
} catch on DioError (e) {
    print("Exception when calling AccountApi->accountPartialUpdate: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8000/api/user*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*AccountApi*](doc/AccountApi.md) | [**accountPartialUpdate**](doc/AccountApi.md#accountpartialupdate) | **PATCH** /account/ | 
[*AccountApi*](doc/AccountApi.md) | [**accountRead**](doc/AccountApi.md#accountread) | **GET** /account/ | 
[*AccountApi*](doc/AccountApi.md) | [**accountUpdate**](doc/AccountApi.md#accountupdate) | **PUT** /account/ | 
[*IsuniqueApi*](doc/IsuniqueApi.md) | [**isuniqueCreate**](doc/IsuniqueApi.md#isuniquecreate) | **POST** /isunique/ | 
[*LoginApi*](doc/LoginApi.md) | [**loginCreate**](doc/LoginApi.md#logincreate) | **POST** /login/ | 
[*OtpApi*](doc/OtpApi.md) | [**otpCreate**](doc/OtpApi.md#otpcreate) | **POST** /otp/ | 
[*OtpregloginApi*](doc/OtpregloginApi.md) | [**otpregloginCreate**](doc/OtpregloginApi.md#otpreglogincreate) | **POST** /otpreglogin/ | 
[*PasswordApi*](doc/PasswordApi.md) | [**passwordResetCreate**](doc/PasswordApi.md#passwordresetcreate) | **POST** /password/reset/ | 
[*RefreshTokenApi*](doc/RefreshTokenApi.md) | [**refreshTokenCreate**](doc/RefreshTokenApi.md#refreshtokencreate) | **POST** /refresh-token/ | 
[*RegisterApi*](doc/RegisterApi.md) | [**registerCreate**](doc/RegisterApi.md#registercreate) | **POST** /register/ | Register View
[*UploadImageApi*](doc/UploadImageApi.md) | [**uploadImageCreate**](doc/UploadImageApi.md#uploadimagecreate) | **POST** /upload-image/ | 


## Documentation For Models

 - [TokenRefresh](doc/TokenRefresh.md)
 - [User](doc/User.md)


## Documentation For Authorization


## Basic

- **Type**: HTTP basic authentication


## Author

devs@101loop.com

