import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning '),
                        Text(
                          'Book Tickets',
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff4f6f0)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12), 
                        child: Row(
                          children: [
                            const Icon(FluentSystemIcons.ic_fluent_search_regular), 
      ])],)
                )
              ],
            ))
      ],
    ));
  }
}
