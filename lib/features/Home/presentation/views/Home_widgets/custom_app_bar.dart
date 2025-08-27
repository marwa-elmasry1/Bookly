import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage(logo), width: 70),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(Routes.kSearchViewPath);
            },
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
          ),
        ],
      ),
    );
  }
}
