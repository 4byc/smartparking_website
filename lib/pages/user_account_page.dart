import 'package:flutter/material.dart';

class UserAccountPage extends StatelessWidget {
  const UserAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Account Page'),
      ),
      body: Center(
        child: Text('This is the User Account Page'),
      ),
    );
  }
}
