import 'package:api_app/models/photo_model.dart';
import 'package:flutter/material.dart';

class PhotosList extends StatelessWidget {
  const PhotosList({Key? key, required this.photos}) : super(key: key);

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Hero(
            tag: photos[index].id,
            child: Image.network(
              photos[index].thumbnailUrl,
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (_) {
                return GestureDetector(
                  child: Hero(
                    tag: photos[index].id,
                    child: Image.network(
                      photos[index].url,
                      fit: BoxFit.cover,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                );
              },
            ));
          },
        );
      },
    );
  }
}
