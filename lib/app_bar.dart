import 'package:flutter/material.dart';
AppBar customAppBar(){
  return AppBar(
    elevation: 5,
    shadowColor: Colors.grey,
    title: const Text("Home"),
    actions: [
      IconButton(onPressed: (){}, icon:const Icon(Icons.notifications)),
      IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_bag))
    ],
    bottom:  PreferredSize(
      preferredSize:  const Size.fromHeight(150),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: 'What are you looking for?',
                  border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0)
                    ),
                    onPressed: (){},
                    child: const ListTile(
                      leading: Icon(Icons.diamond, size: 25,),
                      title: Text("Beauty"),
                    ),
                  ),
                ),
                const SizedBox(
                    height: 50,
                    child: VerticalDivider(
                    )),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.all(0)
                    ),
                    onPressed: (){},
                    child: ListTile(
                      leading: Icon(Icons.shopping_bag_outlined,size: 25,),
                      title: Text("Fashion"),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],

      ),
    ),
  );
}