import 'package:flutter/material.dart';

class StoreItem {
  final String name;

  StoreItem(this.name);
}

class StoreItemWidget extends StatefulWidget {
  final StoreItem item;

  const StoreItemWidget({Key key, @required this.item}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StoreItemState();
  }
}

class StoreItemState extends State<StoreItemWidget> {
  bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Column(
        children: <Widget>[
          Text(widget.item.name),
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
            ),
            onPressed: () => setState(() {
              isFavorite = !isFavorite;
            }),
          )
        ],
      ),
    );
  }
}
