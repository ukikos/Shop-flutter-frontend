import 'package:auto_route/auto_route.dart';
import 'package:shop/navigation/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/service/category/category_client.dart';
import 'package:shop/util/constants.dart';
import 'package:shop/model/category/category.dart';

@RoutePage()
class CategoriesPage extends StatefulWidget {

  const CategoriesPage();

  @override
  State<StatefulWidget> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {

  CategoryClient get categoryClient => context.read();

  Future<List<Category>> _loadCategories() async {
    try {
      final categories = await categoryClient.getRootCategories();
      return categories;
    } catch (e) {
      debugPrint(e.toString());
    }
    return List<Category>.empty();
  }

  String _imageUrl(String? url) {
    return (url != null) ? '${Constants.imgBaseUrl}?link=$url' : Constants
        .imgPlaceholder;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Категории'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FutureBuilder<List<Category>>(
          future: _loadCategories(),
          builder: (context, snapshot) {
            final categories = snapshot.data;
            if (categories == null) {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
            if (categories.isEmpty) {
              return const Center(
                child: Text('Categories not found'),
              );
            } else {
              return ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  String url = _imageUrl(category.imageLink);
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () => {
                          if (category.isLast) {
                            context.router.push(ItemsRoute(id: category.id, category: category))
                          } else {
                            context.router.push(CategoriesChildRoute(id: category.id, category: category))
                          }
                        },
                        child: Container(
                          color: Colors.white,
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
                              const Spacer(),
                              const Icon(
                                Icons.navigate_next,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        height: 10,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black,
                      ),
                    ],
                  );
                },
              );
            }
          }
        ),
      ),
    );
  }
}
