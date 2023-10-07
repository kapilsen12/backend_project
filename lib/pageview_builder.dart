//
// import 'dart:async';
//
// import 'package:flutter/material.dart';
//
// class pageview extends StatefulWidget {
//   const pageview({super.key});
//
//   @override
//   State<pageview> createState() => _pageviewState();
// }
//
// class _pageviewState extends State<pageview> {
//   int currentIndex = 0;
//   List<String> assetsImage = [
//     'assets/login2.png',
//     'assets/weather.png',
//     'assets/weather3.png',
//     'assets/weather4.png'
//   ];
//   late Timer _timer;
//
//   @override
//   void initState() {
//     super.initState();
//     // Start auto-play when the widget is initialized
//     _startAutoPlay();
//   }
//
//   @override
//   void dispose() {
//     // Stop the timer when the widget is disposed
//     _timer.cancel();
//     super.dispose();
//   }
//
//   void _startAutoPlay() {
//     const Duration autoPlayDuration = Duration(seconds: 3);
//
//     _timer = Timer.periodic(autoPlayDuration, (timer) {
//       // Move to the next page
//       setState(() {
//         currentIndex = (currentIndex + 1) % assetsImage.length;
//       });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Carousel slider'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: 200,
//             width: double.infinity,
//             child: Expanded(
//               child: PageView.builder(
//                 onPageChanged: (index) {
//                   setState(() {
//                     currentIndex = index % assetsImage.length;
//                   });
//                 },
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: SizedBox(
//                       height: 400,
//                       width: double.infinity,
//                       child: Image.asset(
//                         assetsImage[index % assetsImage.length],
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               for (var i = 0; i < assetsImage.length; i++)
//                 buildIndicator(currentIndex == i)
//             ],
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget buildIndicator(bool isSelected) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 1),
//       child: Container(
//         height: isSelected ? 10 : 8,
//         width: isSelected ? 10 : 8,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: isSelected ? Colors.black : Colors.grey,
//         ),
//       ),
//     );
//   }
// }

// ... (your existing imports)

import 'dart:async';
import 'package:flutter/material.dart';

class pageview extends StatefulWidget {
  const pageview({super.key});

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  int currentIndex = 0;
  List<String> assetsImage = [
    'assets/login2.png',
    'assets/weather.png',
    'assets/weather3.png',
    'assets/weather4.png'
  ];
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Start auto-play when the widget is initialized
    _startAutoPlay();
  }

  @override
  void dispose() {
    // Stop the timer when the widget is disposed
    _timer.cancel();
    super.dispose();
  }

  void _startAutoPlay() {
    const Duration autoPlayDuration = Duration(seconds: 3);

    _timer = Timer.periodic(autoPlayDuration, (timer) {
      // Move to the next page
      _nextPage();
    });
  }

  void _nextPage() {
    setState(() {
      currentIndex = (currentIndex + 1) % assetsImage.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel slider'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: GestureDetector(
              onHorizontalDragEnd: (details) {
                // Swipe to the right
                if (details.primaryVelocity! > 0) {
                  setState(() {
                    currentIndex = (currentIndex - 1) % assetsImage.length;
                    if (currentIndex < 0) {
                      currentIndex = assetsImage.length - 1;
                    }
                  });
                }
                // Swipe to the left
                else if (details.primaryVelocity! < 0) {
                  _nextPage();
                }
              },
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index % assetsImage.length;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Image.asset(
                        assetsImage[index % assetsImage.length],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < assetsImage.length; i++)
                buildIndicator(currentIndex == i)
            ],
          )
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 10 : 8,
        width: isSelected ? 10 : 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
