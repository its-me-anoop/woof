import 'package:flutter/material.dart';
import 'package:woof/view/widgets/post_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Woof"),
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return PostCard();
          },
        ));
  }
}
