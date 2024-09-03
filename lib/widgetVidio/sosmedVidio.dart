import 'package:flutter/material.dart';

class Sosmedvidio extends StatelessWidget {
  final List<String> imageUrls;
  final List<Size> sizes;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const Sosmedvidio({
    Key? key,
    required this.imageUrls,
    required this.sizes,
    required this.backgroundColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(imageUrls.length, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              backgroundColor: backgroundColor,
            ),
            child: SizedBox(
              width: sizes[index].width,
              height: sizes[index].height,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
