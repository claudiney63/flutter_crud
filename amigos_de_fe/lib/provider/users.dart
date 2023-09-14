import 'package:amigos_de_fe/data/dummy_users.dart';
import 'package:amigos_de_fe/models/user.dart';
import 'package:flutter/material.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...dummyUsers};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}
