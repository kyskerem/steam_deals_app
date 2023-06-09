// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  const GridList({
    required this.itemCount,
    required this.onBuilder,
    required this.gridDelegate,
    super.key,
  });
  final int itemCount;
  final Widget Function(BuildContext context, int index) onBuilder;
  final SliverGridDelegateWithFixedCrossAxisCount gridDelegate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: itemCount,
        physics: const BouncingScrollPhysics(),
        gridDelegate: gridDelegate,
        itemBuilder: onBuilder,
      ),
    );
  }
}
