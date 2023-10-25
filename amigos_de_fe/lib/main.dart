import 'package:amigos_de_fe/provider/users.dart';
import 'package:amigos_de_fe/routes/app_routes.dart';
import 'package:amigos_de_fe/view/user_form.dart';
import 'package:amigos_de_fe/view/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.HOME: (ctx) => const UserList(),
          AppRoutes.USER_FORM: (ctx) => UserForm()
        },
      ),
    );
  }
}
