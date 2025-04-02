import 'package:coinllector_app/shared/components/drawer.dart';
import 'package:coinllector_app/config/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key, required this.child});

  final Widget child;

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  int _selectedIndex = 0;

  final List<String> _routes = [
    AppRoutes.coinsView,
    AppRoutes.profileView,
    AppRoutes.settingsView,
  ];

  // Handle navigation and update state
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    context.go(_routes[index]);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
      body: widget.child,
    );
  }
}
