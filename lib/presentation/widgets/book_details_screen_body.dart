import 'package:books_app/core/utilis/stayles.dart';
import 'package:books_app/presentation/widgets/book_rating.dart';
import 'package:books_app/presentation/widgets/custom_book_Image.dart';
import 'package:books_app/presentation/widgets/similar_book_listView.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_appBar_details.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustopmAppBarDetails(),
                const SizedBox(
                  height: 16,
                ),
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
                const SizedBox(
                  height: 18,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(
                  height: 37,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'you can also like',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SimilarBooksListView(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
