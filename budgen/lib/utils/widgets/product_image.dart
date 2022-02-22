import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;
  const ProductImage({this.imageUrl}) : super();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.05,
        bottom: screenSize.height * 0.02,
        left: screenSize.width * 0.15,
        right: screenSize.width * 0.15,
      ),
      child: Card(
        child: imageUrl != null
            ? Image.network(
                imageUrl,
                fit: BoxFit.fill,
                height: screenSize.width * 0.7,
                width: screenSize.width * 0.7,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(child: CircularProgressIndicator());
                },
              )
            : Padding(
                padding: EdgeInsets.all(
                  screenSize.width * 0.3,
                ),
                child: Icon(
                  Icons.close,
                  size: 50,
                ),
              ),
      ),
    );
  }
}
