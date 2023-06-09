// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GridList extends StatelessWidget {
  const GridList({
    required this.itemCount,
    required this.onBuilder,
    super.key,
  });
  final int itemCount;
  final Widget Function(BuildContext context, int index) onBuilder;

  @override
  Widget build(BuildContext context) {
    const gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
    );
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
