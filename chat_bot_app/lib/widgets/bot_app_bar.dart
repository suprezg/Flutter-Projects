import 'package:flutter/material.dart';

class BotAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BotAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      centerTitle: true,
      title: const Text('FlutterBot'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}