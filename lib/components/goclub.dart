import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Ensure you have the following variables defined
// semibold14, dark1, dark3, green1

class Goclub extends StatelessWidget {
  const Goclub({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 19, left: 15, right: 15),
      child: Container(
        height: 65,
        width: double.infinity,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFEAF3F6), Colors.white],
          ),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color(0xFFE8E8E8)),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 8,
              top: 4,
              bottom: 4,
              child: SvgPicture.asset(
                'assets/icons/dots.svg', // Ensure the SVG file exists
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/star.svg', // Ensure the SVG file exists
                    height: 40,
                  ),
                  const SizedBox(width: 16),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '117 XP lagi ada Harta Kartun',
                          style: semibold14.copyWith(color: dark1),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: LinearProgressIndicator(
                            backgroundColor: dark3,
                            color: green1,
                            value: .8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  SvgPicture.asset(
                    'assets/icons/left.svg', // Ensure the SVG file exists
                    height: 24,
                    colorFilter: ColorFilter.mode(dark1, BlendMode.srcIn),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
