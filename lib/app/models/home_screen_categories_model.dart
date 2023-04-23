import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/app/constants/app/app_constants.dart';
import 'package:grocery_app/app/theme/text_style.dart';

import '../../core/i10n/i10n.dart';

class HomeScreenCategoriesModel extends StatelessWidget {
  const HomeScreenCategoriesModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<QuerySnapshot>(
      future: FirebaseFirestore.instance.collection('CategoriesHome').get(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text('Bir şeyler ters gitti');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        final categories = snapshot.data?.docs;
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: categories?.length,
          itemBuilder: (BuildContext context, int index) {
            final category = categories?[index];
            return Card(
              child: Column(
                children: [
                  SizedBox(
                    width: designWith * .21,
                    height: designHeight * .21,
                    child: Image.network(
                      category!["categoriesImage"],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        category['categoriesName'
                            "${AppLocalization.getLabels.trOrEng}"],
                        style: s14W500().copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
