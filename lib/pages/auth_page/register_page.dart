import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/service/auth/auth_client.dart';

import '../../model/auth/register_request.dart';
import '../../navigation/app_router.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage();

  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  AuthClient get authClient => context.read();

  String _email = '';
  String _firstName = '';
  String _lastName = '';
  String _password = '';

  Future<int> setToken(String token) async {
    SharedPreferences prefs = await _prefs;
    if (prefs.getString('token') != null) {
      await prefs.remove('token'); //тесттесттесттесттесттесттесттсеттестестсетсет
    }
    await prefs.setString('token', token);
    return 1;
  }

  Future<bool> _register(
      String email,
      String firstName,
      String lastName,
      String password) async {
    try {
      final item = await authClient.register(RegisterRequest(
          email: email,
          firstName: firstName,
          lastName: lastName,
          password: password)
      );
      await setToken(item.accessToken);
      return true;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (inputText) {
                    _email = inputText;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Эл.почта',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (inputText) {
                    _firstName = inputText;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Имя',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (inputText) {
                    _lastName = inputText;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Фамилия',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  onChanged: (inputText) {
                    _password = inputText;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Пароль',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () async {
                    final router = context.router;
                    bool done = await _register(
                        _email,
                        _firstName,
                        _lastName,
                        _password);
                    if (done) {
                      router.navigate(
                          const ProfileTab(
                              children: [
                                UserRoute(),
                              ]
                          )
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                  ),
                  child: Text('Продолжить'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}