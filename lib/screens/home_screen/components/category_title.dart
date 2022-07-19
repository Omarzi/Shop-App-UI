import 'package:flutter/material.dart';
import 'package:shop_app_ui/app/app_consts.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final String trailingTitle;
  final VoidCallback? onPressMore;

  const CategoryTitle({
    Key? key,
    required this.title,
    required this.trailingTitle,
    this.onPressMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: onPressMore,
              child: Text(
                trailingTitle,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.lightGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
