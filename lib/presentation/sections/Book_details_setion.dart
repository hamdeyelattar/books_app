import 'package:flutter/material.dart';
import '../../core/utilis/stayles.dart';
import '../widgets/book_rating.dart';
import '../widgets/books_action.dart';
import '../widgets/custom_book_Image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 34,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle20.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
