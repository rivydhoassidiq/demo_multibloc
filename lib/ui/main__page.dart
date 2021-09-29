import 'package:demo_multibloc/ui/draft_page.dart';
import 'package:demo_multibloc/ui/second_page.dart';
import 'package:demo_multibloc/view/color_bloc.dart';
import 'package:demo_multibloc/view/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => Text(
                  number.toString(),
                  style: const TextStyle(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                },
                child: const Text(
                  'Click to Change',
                  style: TextStyle(color: Colors.white),
                ),
                color: color,
                shape: const StadiumBorder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
