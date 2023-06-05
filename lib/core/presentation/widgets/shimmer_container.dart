import 'package:flutter/material.dart';
import 'package:postsapp/core/presentation/theme/color_palette.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmerContainer extends StatelessWidget {
  const AppShimmerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorPalette.gray,
      highlightColor: ColorPalette.lightGray,
      child: Container(
        decoration: BoxDecoration(color: ColorPalette.gray, borderRadius: BorderRadius.circular(2)),
        height: 180,
        width: double.infinity,
      ),
    );
  }
}
