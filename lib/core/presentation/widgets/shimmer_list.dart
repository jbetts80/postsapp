import 'package:flutter/material.dart';
import 'package:postsapp/core/presentation/theme/layout/vertical_space.dart';
import 'package:postsapp/core/presentation/widgets/shimmer_container.dart';

class AppShimmerList extends StatelessWidget {
  const AppShimmerList({
    super.key,
    this.itemCount = 3,
    this.padding,
    this.separation = 30,
  });

  final int itemCount;
  final EdgeInsetsGeometry? padding;
  final double separation;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (_, index) => const AppShimmerContainer(),
        itemCount: itemCount,
        padding: padding ?? EdgeInsets.zero,
        separatorBuilder: (_, __) => vSpace30,
      ),
    );
  }
}
