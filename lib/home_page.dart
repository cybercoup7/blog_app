import 'package:flutter/material.dart';
import 'package:flutter_projects/Drawer.dart';
import 'package:flutter_projects/app_bar.dart';

import 'article_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const CustomDrawer(),
      appBar: customAppBar(),
        body: ListView(children: [
        myCard("assets/images/Ice_cream.jpeg", "Ice Cream is made with Cartagena...",fullwidth: true),
          Row(children: [
            Expanded(child: myCard("assets/images/make_up.jpg","Is coffee one of your daily esse...")),
            Expanded(child: myCard("assets/images/coffee.jpg","Coffee is more than just a drink: it is...")),
          ],),
          myCard("assets/images/fashion.jpg", "Fashion is a popular style, especially in...",fullwidth: true),
          myCard("assets/images/mountain.jpg", "Argon is a great UI packag... ", special: true),
        ],),
    );
  }
}

