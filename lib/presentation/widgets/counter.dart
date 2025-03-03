import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class _AppColors {
  static const Color primary = Color(0xFF0A4A4B);
  static const Color secondary = Color(0xFFEFF8F8);
}

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
            CircularButton(
                FaIcon(FontAwesomeIcons.minus,
                    size: 15, color: _AppColors.primary),
                _decrement),
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
            CircularButton(
                FaIcon(FontAwesomeIcons.plus,
                    size: 15, color: _AppColors.primary),
                _increment),
          ],
        ),
      ],
    );
  }

  Widget CircularButton(FaIcon icon, VoidCallback onPressed) {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: _AppColors.secondary,
        borderRadius: BorderRadius.circular(4),
      ),
      child: IconButton(
        icon: Icon(icon.icon, color: _AppColors.primary),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(minWidth: 20, minHeight: 20),
      ),
    );
  }
}
