import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/item/item.dart';
import 'package:shop/service/item/item_client.dart';
import 'package:shop/util/constants.dart';

@RoutePage()
class ItemDetailsPage extends StatefulWidget {

  const ItemDetailsPage({
    @PathParam('id') required this.itemId,
  });

  final int itemId;

  @override
  State<StatefulWidget> createState() => _ItemDetailsPage();
}

class _ItemDetailsPage extends State<ItemDetailsPage>{

  ItemClient get _itemClient => context.read();

  String _imageUrl(String? url) {
    return (url != null) ? '${Constants.imgBaseUrl}?link=$url' : Constants
        .imgPlaceholder;
  }

  Future<Item> _loadItemById() async {
    try {
      final item = await _itemClient.getItemByItemId(widget.itemId);
      return item;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loadItemById(),
        builder: (context, snapshot) {
          final item = snapshot.data;
          if (item == null) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          return Scaffold(
            appBar: AppBar(
              title: Text(item.name),
              centerTitle: true,
            ),
            body: DividerTheme(
              data: const DividerThemeData(
                indent: 20,
                endIndent: 20,
              ),
              child: CustomScrollView(
                slivers: [
                  SliverList.list(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 120,
                          vertical: 10
                        ),
                        child: CachedNetworkImage(
                            imageUrl: _imageUrl(item.imageLink),
                            placeholder: (context, url) => const CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Image.asset(url),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerLeft,
                        child: Text('${item.price.toString()} Р'),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(20),
                        child: ButtonTheme(
                          minWidth: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size.fromHeight(40),
                            ),
                            onPressed: null,
                            child: Text('В корзину'),
                          ),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 200,
                          minHeight: 56.0,
                        ),
                        child: ListView.builder(
                          itemCount: item.attributes.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Text(
                                          item.attributes.elementAt(index).name
                                        )
                                      ),
                                      const Spacer(
                                        flex: 1,
                                      ),
                                      Expanded(
                                        flex: 5,
                                        child: Text(
                                          item.attributes.elementAt(index).value,
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    height: 10,
                                    thickness: 1,
                                    indent: 20,
                                    endIndent: 20,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
