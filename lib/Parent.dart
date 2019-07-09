import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ParentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parents',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing:12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
        children: <Widget> [
          MyItems(Icons.graphic_eq, "TotalViews", Colors.blue),
          MyItems(Icons.graphic_eq, "TotalViews", Colors.blue),
          MyItems(Icons.graphic_eq, "TotalViews", Colors.blue),
          MyItems(Icons.graphic_eq, "TotalViews", Colors.blue),
          MyItems(Icons.graphic_eq, "TotalViews", Colors.blue),
          MyItems(Icons.graphic_eq, "TotalViews", Colors.blue),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
        ],
      ),
    );
  }
}

