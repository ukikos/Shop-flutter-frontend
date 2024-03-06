import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/user/user.dart';
import 'package:shop/navigation/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/service/user/user_client.dart';

@RoutePage()
class UserPage extends StatefulWidget {
  const UserPage();

  @override
  State<StatefulWidget> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  UserClient get userClient => context.read();

  bool? isAuth;

  User? user;

  Future<bool> isAuthenticated() async {
    final SharedPreferences prefs = await _prefs;
    String? token = prefs.getString('token');
    if (token != null && isAuth == false) {
      setState(() {
        isAuth = true;
      });
      return Future(() => true);
    } else if (token == null && isAuth == true) {
      setState(() {
        isAuth = false;
      });
      return Future(() => false);
    } else if (token != null && isAuth == true) {
      return Future(() => true);
    } else if (token == null && isAuth == false) {
      return Future(() => false);
    } else {
      return Future(() => false);
    }
  }

  void logout() async {
    final SharedPreferences prefs = await _prefs;
    prefs.remove('token');
    setState(() {
      isAuth = false;
    });
  }

  @override
  void initState() {
    isAuth = false;
    super.initState();
  }

  Future<User> _loadUser() async {
    final SharedPreferences prefs = await _prefs;
    String? token = prefs.getString('token');
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token!);
    int id = decodedToken['userId'];
    final user = await userClient.getUserByUserId(id);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: isAuthenticated(),
          builder: (context, snapshot) {
            if (snapshot.data == false) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 50)
                        ),
                        onPressed: () {
                          context.router.push(LoginRoute());
                        },
                        child: Text('Войти'),
                      ),
                    ),
                  ),
                  Center(
                    child: ButtonTheme(
                      minWidth: 600.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(200, 50)
                        ),
                        onPressed: null,
                        child: Text('Зарегистрироваться'),
                      ),
                    ),
                  )
                ],
              );
            } else {
              return FutureBuilder(
                future: _loadUser(),
                builder: (context, snapshot) {
                  final user = snapshot.data;
                  if (user == null) {
                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Row(
                          children: [
                            Spacer(flex: 1,),
                            Expanded(child: Text('Email: '), flex: 3,),
                            Spacer(flex: 1,),
                            Expanded(child: Text('${user.email}'), flex: 3,),
                            Spacer(flex: 1,),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Spacer(flex: 1,),
                            Expanded(child: Text('Имя: '), flex: 3,),
                            Spacer(flex: 1,),
                            Expanded(child: Text('${user.firstName}'), flex: 3,),
                            Spacer(flex: 1,),
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Spacer(flex: 1,),
                            Expanded(child: Text('Фамилия: '), flex: 3,),
                            Spacer(flex: 1,),
                            Expanded(child: Text('${user.lastName}'), flex: 3,),
                            Spacer(flex: 1,),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () {
                              logout();
                            },
                            child: Text('Выйти')),
                      )
                    ],
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }

}
