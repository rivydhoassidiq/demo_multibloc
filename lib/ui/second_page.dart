import 'package:demo_multibloc/ui/draft_page.dart';
import 'package:demo_multibloc/view/color_bloc.dart';
import 'package:demo_multibloc/view/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterBloc, int>(
                builder: (context, number) => GestureDetector(
                  onTap: () {
                    counterBloc.add(number + 1);
                  },
                  child: Text(
                    number.toString(),
                    style: const TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                      onPressed: () {
                        colorBloc.add(ColorEvent.toPink);
                      },
                      color: Colors.pink,
                      shape: (color == Colors.pink)
                          ? const CircleBorder(
                              side: BorderSide(color: Colors.black, width: 3))
                          : CircleBorder()),
                  RaisedButton(
                      onPressed: () {
                        colorBloc.add(ColorEvent.toAmber);
                      },
                      color: Colors.amber,
                      shape: (color == Colors.amber)
                          ? const CircleBorder(
                              side: BorderSide(color: Colors.black, width: 3))
                          : CircleBorder()),
                  RaisedButton(
                      onPressed: () {
                        colorBloc.add(ColorEvent.toPurple);
                      },
                      color: Colors.purple,
                      shape: (color == Colors.purple)
                          ? const CircleBorder(
                              side: BorderSide(color: Colors.black, width: 3))
                          : CircleBorder()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
