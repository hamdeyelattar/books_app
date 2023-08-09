import 'package:flutter/material.dart';

import 'custom_appBar_details.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustopmAppBarDetails(),
        ],
      ),
    );
  }
}

