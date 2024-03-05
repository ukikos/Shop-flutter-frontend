import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shop/model/item/item.dart';
import 'package:shop/service/item/item_client.dart';
import 'package:shop/util/constants.dart';
import 'package:shop/model/item/item_of_list.dart';

class ItemsGridView extends StatefulWidget {

  final ItemClient itemClient;
  final int categoryId;
  final int? size;
  final String? sort;

  const ItemsGridView({
    required this.itemClient,
    required this.categoryId,
    required this.size,
    required this.sort
  });

  @override
  State<StatefulWidget> createState() => _ItemsGridViewState();
}

class _ItemsGridViewState extends State<ItemsGridView>{

  final PagingController<int, ItemOfList> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newPagination = await widget.itemClient.getItemsByCategoryId(
        id: widget.categoryId,
        page: pageKey,
        size: widget.size,
        sort: widget.sort
      );

      final isLastPage = newPagination.last;
      final newItems = newPagination.content;

      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + 1;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  String _imageUrl(String? url) {
    return (url != null) ? '${Constants.imgBaseUrl}?link=$url' : Constants
        .imgPlaceholder;
  }

  @override
  Widget build(BuildContext context) {
    return PagedGridView<int, ItemOfList>(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate<ItemOfList>(
        itemBuilder: (context, item, index) => Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1 / 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: CachedNetworkImage(
                    imageUrl: _imageUrl(item.imageLink),
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Image.asset(url),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    item.name,
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text('${item.price.toString()} Р'),
                        const Spacer(),
                        Builder(builder: (context) {
                          if (true) {
                            return const ElevatedButton(
                                onPressed: null,
                                child: Text('В корзину')
                            );
                          } else {
                            // если не залогинен не рендерить ничего
                          }
                        }),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        firstPageErrorIndicatorBuilder: (context) => const Center(
          child: Text('Error fetch data'),
        ),
        noItemsFoundIndicatorBuilder: (context) => const Center(
          child: Text('No data'),
        ),
        newPageProgressIndicatorBuilder: (context) => const CircularProgressIndicator()
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4.0 / 5.2,
      )
    );
  }
}


