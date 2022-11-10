import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key? key,
    required this.value,
    required this.title,
    required this.color,
    required this.onpressedTambah,
    required this.onpressedKurang,
    required this.onpressedReset,
  }) : super(key: key);

  final int value;
  final String title;
  final Color color;
  final VoidCallback onpressedTambah;
  final VoidCallback onpressedKurang;
  final VoidCallback onpressedReset;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "$value",
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: onpressedTambah,
                  child: const Center(
                    child: Text("tambah"),
                  ),
                ),
                TextButton(
                  onPressed: onpressedReset,
                  child: const Center(
                    child: Text("reset"),
                  ),
                ),
                TextButton(
                  onPressed: onpressedKurang,
                  child: const Center(
                    child: Text("kurang"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
