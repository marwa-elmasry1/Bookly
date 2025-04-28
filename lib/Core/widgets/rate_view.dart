import'package:flutter/material.dart';


class RateView extends StatelessWidget {
  const RateView({super.key, required this.rateAlignment, required this.height});
final Alignment rateAlignment ;
final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: rateAlignment,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.star,color: Colors.amber,size: 20,),
          SizedBox(width: 5),
          Text('4.8'),
          SizedBox(width: 5),
          Text('(2390)'),
        ],
      ),
    );
  }
}