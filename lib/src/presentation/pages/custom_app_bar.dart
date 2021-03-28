import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {

  final String centerTitle;

  const CustomAppBar({
    Key key, 
    this.centerTitle = "Wheater App"}
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => {},
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      title: Text(centerTitle),
      actions: [
        PopupMenuButton<String>(
          onSelected: _handleItemSelected,
          itemBuilder: (BuildContext context) {
            return {'Logout', 'Settings'}.map((String choice) {
              return PopupMenuItem(
                value: choice,
                child: Text(choice)
                );
            }).toList();
          }
        )
      ],
      backgroundColor: Colors.transparent,
    );
  }

  @override 
  Size get preferredSize =>  Size.fromHeight(50.0);

  _handleItemSelected(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }
}