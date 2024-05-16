import 'package:flutter/material.dart';
import 'package:radiology_app/components/news_component.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => const Column(
        children: [
          NewsComponent(),
          Divider(
            color: Colors.grey,
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
