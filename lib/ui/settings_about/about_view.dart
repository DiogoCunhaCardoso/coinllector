import 'package:coinllector_app/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileSettingsAboutView extends StatelessWidget {
  const ProfileSettingsAboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go(AppRoutes.settingsAbout()),
          child: const Text('Go Back'),
        ),
      ),
    );
  }
}
