import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/model/category/category.dart';
import 'package:shop/pages/items_page/widgets/items_grid_view.dart';
import 'package:shop/service/item/item_client.dart';

@RoutePage()
class ItemsPage extends StatefulWidget {
  const ItemsPage({
    @PathParam('id') required this.id,
    required this.category
  });

  final int id;
  final Category category;

  @override
  State<StatefulWidget> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {

  ItemClient get itemClient => context.read();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ItemsGridView(
          itemClient: itemClient,
          categoryId: widget.id,
          size: 10,
          sort: null,
        ),
      ),
    );
  }
}
