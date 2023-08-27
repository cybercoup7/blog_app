import 'package:flutter/material.dart';
import 'package:flutter_projects/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            height:80,
            child:  Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.hexagon_outlined,color:Colors.deepPurpleAccent,size: 50,),
                title: Text("BLOG", style:Theme.of(context).textTheme.displayLarge),
              ),
            )
            ),
          const ListTile(
            leading: Icon(Icons.home_outlined, color: Colors.blue,),
            title: Text("Home"),
          ),
           ListTile(
            onTap:()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProfileScreen())),
            leading: Icon(Icons.pie_chart, color: Colors.pinkAccent,),
            title: Text("Profile"),
          ),
          const ListTile(
            leading: Icon(Icons.calendar_month, color: Colors.lightBlue,),
            title: Text("Account"),
          ),
          const ListTile(
            leading: Icon(Icons.line_weight,color: Colors.pinkAccent,),
            title: Text("Elements"),
          ),
          const ListTile(
            leading: Icon(Icons.rocket_launch_rounded, color: Colors.deepPurpleAccent,),
            title: Text("Articles"),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("DOCUMENTATION", style: TextStyle(fontSize: 20, color: Colors.grey),),
          ),
          const ListTile(
            iconColor: Colors.grey,
            textColor: Colors.grey,
            leading: Icon(Icons.rocket_launch_rounded),
            title: Text("Getting Started"),
          ),
        ],
      ),
    );
  }
}
