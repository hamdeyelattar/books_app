import 'package:flutter/material.dart';
import '../../core/utilis/stayles.dart';
import '../widgets/similar_book_listView.dart';

class SimilarBooksSections extends StatelessWidget {
  const SimilarBooksSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'you can also like',
          style: Styles.textStyle20.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
