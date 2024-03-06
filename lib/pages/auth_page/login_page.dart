import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/model/auth/access_token.dart';
import 'package:shop/model/auth/login_request.dart';
import 'package:shop/navigation/app_router.dart';
import 'package:shop/service/auth/auth_client.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage();

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  AuthClient get authClient => context.read();

  String _email = '';
  String _password = '';

  Future<int> setToken(String token) async {
    SharedPreferences prefs = await _prefs;
    await prefs.setString('token', token);
    return 1;
  }

  Future<bool> _login(String email, String password) async {
    try {
      final item = await authClient.login(LoginRequest(
          email: email,
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
        title: const Text('Вход'),
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
                    labelText: 'Email',
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
                    labelText: 'Password',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () async {
                    final router = context.router;
                    bool done = await _login(_email, _password);
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
                  child: Text('Войти'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
