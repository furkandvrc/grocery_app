import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreenCategoriesModel extends StatelessWidget {
  final String documentId;
  const HomeScreenCategoriesModel({super.key, required this.documentId});

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
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: categories?.length,
          itemBuilder: (BuildContext context, int index) {
            final category = categories?[index];
            return ListTile(
              title: Text(category!['categoriesNameTR']),
            );
          },
        );
      },
    );
  }
}
