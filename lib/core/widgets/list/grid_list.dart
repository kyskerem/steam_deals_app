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
  final _gridDelegate = const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 20,
    mainAxisSpacing: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: itemCount,
        physics: const BouncingScrollPhysics(),
        gridDelegate: _gridDelegate,
        itemBuilder: onBuilder,
      ),
    );
  }
}
