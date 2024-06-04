import 'package:flutter/material.dart';

class ImageUploadButton extends StatelessWidget {
  const ImageUploadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black26,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.add,
            color: Colors.black54,
            size: 50.0,
          ),
          Text(
            "Upload Picture",
          )
        ],
      ),
    );
  }
}