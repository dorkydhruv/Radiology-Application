import 'package:flutter/material.dart';
import 'package:radiology_app/components/marketplace_component.dart';
import 'package:radiology_app/constants.dart';

class Marketplace extends StatelessWidget {
  const Marketplace({super.key});

  @override
  Widget build(BuildContext context) {
    final [width, height] = getDimensions(context);
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => Column(
        children: [
          SizedBox(
            height: height * 0.3,
            width: width,
            child: const MarketplaceComponent(),
          ),
          const Divider(
            color: secondaryColor,
            indent: 40,
            endIndent: 40,
          )
        ],
      ),
    );
  }
}
