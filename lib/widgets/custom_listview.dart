import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListView extends StatelessWidget {
  CustomListView({Key? key, required this.childern}) : super(key: key);

  List<Widget> childern = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: childern,
        )
      ],
    );
  }
}
