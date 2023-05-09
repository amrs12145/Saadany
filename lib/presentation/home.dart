// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:saadeny/data/model/user.dart';

import '../data/service/user_service.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _isLoading = false;
  late List<User> _users;

  _load() async {
    _isLoading = true;
    await UserApi.loadUsers().then((value) => _users = value);
    // _users = await UserApi.loadUsers();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    _load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: _isLoading
            ? [Center(child: CircularProgressIndicator())]
            : _users
                .map(
                  (user) => Row(
                    children: [
                      Text('Name: '),
                      Text(user.firstName),
                      Text('          '),
                      Text('email: '),
                      Text(user.email),
                    ],
                  ),
                )
                .toList(),
      ),
    );
  }
}
