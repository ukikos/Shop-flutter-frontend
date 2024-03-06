import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/service/cart/cart_client.dart';
import 'package:shop/service/item/item_client.dart';
import 'package:shop/util/constants.dart';

import '../../model/item/item.dart';

@RoutePage()
class CartPage extends StatefulWidget {
  const CartPage();

  @override
  State<StatefulWidget> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  CartClient get cartClient => context.read();

  ItemClient get itemClient => context.read();

  Future<Item> _loadItemById(int id) async {
    try {
      final item = await itemClient.getItemByItemId(id);
      return item;
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  String _imageUrl(String? url) {
    return (url != null)
        ? '${Constants.imgBaseUrl}?link=$url'
        : Constants.imgPlaceholder;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Consumer<CartClient>(
          builder: (context, client, child) {
            if (client.items.isNotEmpty) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      addAutomaticKeepAlives: true,
                      itemCount: client.items.length,
                      itemBuilder: (context, index) {
                        final cartMap = client.items;
                        final keys = cartMap.keys.toList();
                        final id = keys[index];
                        final count = cartMap[keys[index]];
                        return FutureBuilder<Item>(
                            future: _loadItemById(id),
                            builder: (context, snapshot) {
                              final item = snapshot.data;
                              if (item == null) {
                                return const Center(
                                  child: CupertinoActivityIndicator(),
                                );
                              }
                              String url = _imageUrl(item.imageLink);
                              return Container(
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black38,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1 / 1,
                                      child: Container(
                                        margin: EdgeInsets.symmetric(horizontal: 60),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: CachedNetworkImage(
                                            imageUrl: url,
                                            placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                            errorWidget: (context, url, error) =>
                                                Image.asset(url),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Column(
                                        children: [
                                          Text(
                                            item.name,
                                            textAlign: TextAlign.left,
                                          ),
                                          Text('${(item.price * count!).toString()} Р'),
                                          Center(
                                            child: Container(
                                              margin: const EdgeInsets.all(10),
                                              child: Center(
                                                child: Row(
                                                  children: [
                                                    Spacer(),
                                                    ElevatedButton(
                                                      onPressed: () => client.remove(id, item.price),
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor: Colors.red,
                                                      ),
                                                      child: Container(
                                                        margin: EdgeInsets.symmetric(horizontal: 5),
                                                          child: Text('-')
                                                      ),
                                                    ),
                                                    Text('$count'),
                                                    ElevatedButton(
                                                      onPressed: () => client.add(id, item.price),
                                                      child: Text('+'),
                                                    ),
                                                    Spacer(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('Итого: ${client.sum.toString()} Р'),
                        ElevatedButton(
                          onPressed: null,
                          child: Text('Оформить заказ'),
                        )
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return const Center(
                child: Text('Корзина пуста'),
              );
            }
          },
        ),
      ),
    );
  }
}
