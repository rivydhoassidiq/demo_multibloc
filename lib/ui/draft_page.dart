import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  final Color backgroundColor;
  final Widget body;

  const DraftPage({Key? key, required this.backgroundColor, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Demo MultiBloc in MulitPage App'),
      ),
      body: body,
    );
  }
}
