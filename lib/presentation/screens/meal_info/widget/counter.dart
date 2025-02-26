import 'package:flutter/material.dart';
import 'package:meals/config/models/models.dart';

class Counter extends StatefulWidget {
  final String label;
  final int initialValue;

  const Counter({
    super.key,
    required this.label,
    this.initialValue = 0,
  });

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initialValue;
  }

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            CircularButton(Icons.remove, _decrement),
            SizedBox(
              width: 30, //
              child: Center(
                child: Text(
                  '$_counter',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            CircularButton(Icons.add, _increment),
          ],
        ),
      ],
    );
  }

  Widget CircularButton(IconData icon, VoidCallback onPressed) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: IconButton(
        icon: Icon(icon, color: AppColors.primary),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(minWidth: 20, minHeight: 20),
      ),
    );
  }
}
