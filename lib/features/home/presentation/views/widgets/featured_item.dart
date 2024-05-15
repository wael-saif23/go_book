import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_book/core/widgets/custom_circular_indicator.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 1.35 / 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            placeholder: (context, url) => const CustomCircularIndicator(
             
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: const BorderRadius.all(Radius.circular(16)),
          //     image: DecorationImage(
          //         image: NetworkImage(imageUrl), fit: BoxFit.fill),
          //   ),
          // ),
        ),
      ),
    );
  }
}
