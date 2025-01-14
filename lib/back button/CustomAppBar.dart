import 'package:flutter/material.dart';

class custom_back extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onBack;

  const custom_back({
    super.key,
    required this.title,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.green),
        onPressed: onBack,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.green),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
