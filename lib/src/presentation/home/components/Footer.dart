import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '© 2021 SRHQ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
