import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Coffie_items extends StatelessWidget {
  final String itemname;
  final color;
  const Coffie_items({Key? key, required this.itemname, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Text(
        itemname,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: color),
      ),
    );
  }
}
