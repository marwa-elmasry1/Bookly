import 'package:bookly/Core/constants.dart';
import 'package:bookly/Core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomPriceContainer extends StatelessWidget {
  const CustomPriceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 110,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            color: Colors.white70,
          ),
          alignment: Alignment.center,
          child: Text(
            'Price\$',
            style: TextStyles.textStyle16.copyWith(color: kOrangeColor),
          ),
        ),
        Container(
          width: 110,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: const Color.fromARGB(255, 177, 97, 73),
          ),
          alignment: Alignment.center,
          child: Text('Free Preview', style: TextStyles.textStyle16),
        ),
      ],
    );
  }
}
