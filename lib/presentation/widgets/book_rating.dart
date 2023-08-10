import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/utilis/stayles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment= MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle14,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2554)',
          style: Styles.textStyle14.copyWith(
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
