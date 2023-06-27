import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customcontainer extends StatelessWidget {
  String text;
  Color color;
  final VoidCallback onpress;
  customcontainer({
    required this.text,
    required this.color,
    required this.onpress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    offset: Offset(6, 6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  )
                ],
                color: color,
              ),
              child: Center(
                  child: Text(text,
                      style: Theme.of(context).textTheme.titleLarge)),
            ),
            const SizedBox(
              height: 10,
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
