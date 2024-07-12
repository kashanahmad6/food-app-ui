// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyDrawerTile extends StatelessWidget {
  final String title;
  final IconData icon;
  void Function()? onTap;
  MyDrawerTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 25),
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          leading: Icon(
            icon,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
