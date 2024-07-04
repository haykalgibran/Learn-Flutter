import 'package:belajar1/models/datas/news.dart'; // Ensure correct import for news data
import 'package:belajar1/theme.dart'; // Ensure correct import for theme variables
import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // GopayLater Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/gopaylater.png', // Ensure this image exists
                    height: 14,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Lebih hemat pake GoPayLater 🤩',
                    style: bold16.copyWith(color: dark1),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~',
                    style: regular14.copyWith(color: dark2),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // News Section
              Column(
                children: news // Assuming `news` is a list of News objects
                    .map((item) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: 24, left: 16, right: 16),
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: dark4),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/${item.image}', // Ensure this image path is correct
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(24),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item.title,
                                        style: bold16.copyWith(color: dark1),
                                      ),
                                      const SizedBox(height: 16),
                                      Text(
                                        item.description,
                                        style: regular14.copyWith(color: dark2),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
