import 'package:chat/screens/screen.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:dio/dio.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  String registerMessage = "";

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _mobileController.dispose();
    super.dispose();
  }

  void _register() async {
    Response response;
    final api = Openapi().getRegisterApi();
    User data = User((b) => b
      ..username = _usernameController.text
      ..name = _nameController.text
      ..email = _emailController.text
      ..mobile = _mobileController.text
      ..password = _passwordController.text);
    try {
      response = await api.registerCreate(data: data);
      if (response.statusCode == 201) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
        );
      }
      print(response.data);
    } on DioError catch (e) {
      if (e.response!.statusCode == 400) {
        print(e.response!.data);
        setState(() {
          registerMessage = e.response!.data.toString();
        });
      } else
        print('Exception when calling RegisterApi->registerCreate: $e\n');
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
                  'Register',
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
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Full Name',
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
            const SizedBox(height: 12.0),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'email',
              ),
            ),
            const SizedBox(height: 12.0),
            TextField(
              controller: _mobileController,
              decoration: const InputDecoration(
                labelText: 'mobile',
              ),
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                    _nameController.clear();
                    _mobileController.clear();
                    _emailController.clear();
                  },
                  style: TextButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary,
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: const Text('Sign up'),
                  onPressed: () {
                    _register();
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
            Column(
              children: <Widget>[
                const SizedBox(height: 64.0),
                Text(
                  registerMessage,
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
