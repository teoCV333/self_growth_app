import 'package:flutter/material.dart';
import 'package:self_growth_app/features/tasks/presentation/screens/pending/search_widget.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: 16 / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SearchScreen(),
        ],
      ),
    );
  }
}