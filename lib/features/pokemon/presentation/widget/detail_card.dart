import 'package:flutter/material.dart';

import 'gap.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    super.key,
    required this.detail,
    required this.title,
  });

  final Widget title;

  final String detail;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title,
            const Gap(),
            Text(
              detail,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
