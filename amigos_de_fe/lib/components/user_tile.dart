import 'package:amigos_de_fe/models/user.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  const UserTile({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl.isEmpty
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));

    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.edit), color: Colors.orange),
            IconButton(onPressed: () {}, icon: const Icon(Icons.delete), color: Colors.red)
          ],
        ),
      ),
    );
  }
}
