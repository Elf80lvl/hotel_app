import 'package:app_test_vacancy/const/const.dart';
import 'package:flutter/material.dart';

class GalleryWidget2 extends StatefulWidget {
  const GalleryWidget2({
    super.key,
    required this.imageUrls,
  });

  final List<String> imageUrls;

  @override
  State<GalleryWidget2> createState() => _GalleryWidget2State();
}

class _GalleryWidget2State extends State<GalleryWidget2> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 257,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              controller: _pageController,
              itemCount: widget.imageUrls.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(kBorderRadiusHotelImage),
                    child: Image.network(
                      widget.imageUrls[index],
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(
                            Icons.broken_image,
                            color: Colors.grey,
                            size: 64,
                          ),
                        );
                      },
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
          //*gallery indicators
          Positioned(
            bottom: 8,
            child: Container(
              //width: 20,
              //height: 8,
              padding: const EdgeInsets.symmetric(
                horizontal: 10 - 2.5,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                  color: kColorCardBGlight,
                  borderRadius:
                      BorderRadius.circular(kBorderRadiusGalleryIndicatorBg)),
              child: Row(
                children: List.generate(
                  widget.imageUrls.length,
                  //*single indicator
                  (index) {
                    final bool isCurrentPage = index == currentPage;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.5),
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          color: isCurrentPage
                              ? kColorGalleryIndicatorActiveLight
                              : kColorGalleryIndicatorNotActiveLight,
                          shape: BoxShape.circle,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
