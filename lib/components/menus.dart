import 'package:belajar1/models/datas/icons.dart';
import 'package:belajar1/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Ensure you have the following variables defined
// menuIcons, dark2, regular12_5

class Menus extends StatelessWidget {
  const Menus({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 27, top: 32),
      child: SizedBox(
        height: 157,
        child: GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: menuIcons.map((icon) {
            return Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: icon.icon == 'goclub' ? Colors.white : icon.color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SvgPicture.asset(
                    'assets/icons/${icon.icon}.svg', // Ensure the SVG file exists and icon.icon is valid
                    color: icon.icon == 'goclub'
                        ? icon.color
                        : icon.icon == 'other'
                            ? dark2
                            : Colors.white,
                    width: 24,
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  icon.title,
                  style: regular12_5.copyWith(color: dark2),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
