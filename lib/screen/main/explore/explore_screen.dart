import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  static const routeName = '/explore';

  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Explore Screen'),
      ),
    );
  }
}
