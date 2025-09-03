import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({
    super.key,
    required this.bookPrice,
    required this.bookLink,
  });

  final String bookPrice;
  final String bookLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            text: bookPrice,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            width: 100,
            onPressed: () {},
          ),
          CustomButton(
            backgroundColor: Color(0xffEF5235),
            textColor: Colors.white,
            text: 'Free Preview',
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            onPressed: () async {
              final Uri uri = Uri.parse(bookLink);

              if (await canLaunchUrl(uri)) {
                await launchUrl(uri, mode: LaunchMode.externalApplication);
              } else {
                return SnackBar(
                    content: Text(" Couldn't open the book preview"),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
// Uri.tryParse(
//bookLink ?? 'https://books.google.com');
