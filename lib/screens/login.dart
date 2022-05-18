import 'package:flutter/material.dart';
import 'package:chat/screens/screen.dart';
import 'package:openapi/openapi.dart';
import 'package:dio/dio.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  String loginMessage = "";

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void login() async {
    Response response;
    final api = Openapi().getLoginApi();
    Map<String, dynamic> data = {
      'username': _usernameController.text,
      'password': _passwordController.text
    };
    try {
      response = await api.loginCreate(data: data);
      if (response.statusCode == 200) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
      print(response.data);
    } on DioError catch (e) {
      if (e.response!.statusCode == 400) {
        print("帐号密码不能为空");
        setState(() {
          loginMessage = '帐号密码不能为空';
        });
      } else if (e.response!.statusCode == 401) {
        print("帐号密码填写错误");
        setState(() {
          loginMessage = '帐号密码填写错误';
        });
      } else
        print('Exception when calling LoginApi->loginCreate: $e\n');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                const SizedBox(height: 24.0),
                Text(
                  'Chat',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            const SizedBox(height: 120.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Sign in'),
                  onPressed: () {
                    login();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 8.0,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),
              ],
            ),
            TextButton(
              child: const Text('Create a new account'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              style: TextButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                const SizedBox(height: 64.0),
                Text(
                  loginMessage,
                  style: const TextStyle(color: Colors.red, fontSize: 14.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
