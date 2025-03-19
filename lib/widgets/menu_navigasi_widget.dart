import 'package:flutter/material.dart';


final menus = [
    {
      "menu": "Home",
      "icon": Icon(Icons.home),
    },
    {
      "menu": "Settings",
      "icon": Icon(Icons.settings),
    },
    {
      "menu": "Profile",
      "icon": Icon(Icons.person),
    },
  ];


class MenuNavigasiWidget extends StatelessWidget {

  final Function(String menu)? onClick;

  const MenuNavigasiWidget({
    super.key,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true ,
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: menus.length,
      itemBuilder: (context, index) => GestureDetector(
          onTap: () => onClick?.call(menus[index]['menu'] as String),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: menus[index]['icon'] as Widget,
                ),
                Text(menus[index]['menu'] as String),
              ],
            ),
          ),
        )
    );
  }
}