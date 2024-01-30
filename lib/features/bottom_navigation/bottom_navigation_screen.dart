import 'package:flutter/material.dart';
import 'package:lpio/features/bottom_navigation/widgets/bottom_navigation_widget.dart';

class BottomNavigationScreen extends StatelessWidget {
  final Widget child;
  const BottomNavigationScreen({required this.child, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: child,
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
