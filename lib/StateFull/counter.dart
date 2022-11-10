import 'counter_widget.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int score1 = 0;
  int score2 = 0;
  int score3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Score Board"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterWidget(
              value: score1,
              title: "Team A",
              color: Colors.amber,
              onpressedTambah: () {
                setState(() {
                  score1++;
                });
              },
              onpressedKurang: () {
                setState(() {
                  score1--;
                  if (score1 <= 0) {
                    score1 = 0;
                  }
                });
              },
              onpressedReset: () {
                setState(() {
                  score1 = 0;
                });
              },
            ),
            CounterWidget(
              value: score2,
              title: "Team B",
              color: Colors.green,
              onpressedTambah: () {
                setState(() {
                  score2++;
                });
              },
              onpressedKurang: () {
                setState(() {
                  score2--;
                  if (score2 <= 0) {
                    score2 = 0;
                  }
                });
              },
              onpressedReset: () {
                setState(() {
                  score2 = 0;
                });
              },
            ),
            CounterWidget(
              value: score3,
              title: "Team C",
              color: Colors.blueAccent,
              onpressedTambah: () {
                setState(() {
                  score3++;
                });
              },
              onpressedKurang: () {
                setState(() {
                  score3--;
                  if (score3 <= 0) {
                    score3 = 0;
                  }
                });
              },
              onpressedReset: () {
                setState(() {
                  score3 = 0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
