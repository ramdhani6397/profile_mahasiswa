import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showMessage(BuildContext context, String name) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Anda mengklik $name')));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt),
          tooltip: 'Instagram',
          onPressed: () => _showMessage(context, 'Instagram'),
        ),
        IconButton(
          icon: const Icon(Icons.business),
          tooltip: 'LinkedIn',
          onPressed: () => _showMessage(context, 'LinkedIn'),
        ),
        IconButton(
          icon: const Icon(Icons.code),
          tooltip: 'GitHub',
          onPressed: () => _showMessage(context, 'GitHub'),
        ),
      ],
    );
  }
}
