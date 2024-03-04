import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/service/category/category_client.dart';
import 'package:shop/util/constants.dart';

import '../../model/category/category.dart';

@RoutePage()
class CategoriesPage extends StatefulWidget {

  const CategoriesPage({super.key});

  @override
  State<StatefulWidget> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {

  CategoryClient get categoryClient => context.read();

  Future<List<Category>> _loadCategories() async {
    try {
      final pagination = await categoryClient.getRootCategories();
      return pagination;
    } catch (e) {
      debugPrint(e.toString());
    }
    return List<Category>.empty();
  }

  String _imageUrl(String? url) {
    return (url != null) ? '${Constants.imgBaseUrl}?link=$url' : Constants.imgPlaceholder;
  }

  //late final Future<List<Category>> _data = _loadCategories(); 1

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<List<Category>>(
          future: _loadCategories(), //1
          builder: (context, snapshot) {
            final categories = snapshot.data;
            if (categories == null) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            return ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                String url = _imageUrl(category.imageLink);
                return Container(
                  color: Colors.grey.shade300,
                  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  height: 100,
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CachedNetworkImage(
                          imageUrl: url,
                          placeholder: (context, url) => const CircularProgressIndicator(),
                          errorWidget: (context, url, error) => Image.asset(url),
                        ),
                      ),
                      const SizedBox(
                        width: 10
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(category.name)
                      ),
                    ],
                  ),
                );
              },
            );
          }
        ),
      ),
    );
  }
}

// @RoutePage()
// class CategoriesPage extends StatelessWidget {
//   const CategoriesPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Categories title'),
//         centerTitle: true,
//       ),
//       body: const SafeArea(
//         child: Center(
//           child: Text(
//             'Categories page body'
//           ),
//         ),
//       ),
//     );
//   }
// }
