import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
    children: [
      Container(
        color: Colors.white,
      ),
      Image.asset("assets/images/background.png"),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),),
          title: Text("Profile", style: TextStyle(color: Colors.white, fontSize: 18),),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag, color: Colors.white,))
          ],
        ),
        body:  Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlueAccent
                            ),
                              onPressed: (){}, child: const Text("Connect")),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black
                              ),
                              onPressed: (){}, child: const Text("Message"))
                        ],),
                        Container(
                          width: 300,
                          margin: EdgeInsets.only(top: 30, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Column(children: [
                              Text("2k",style: TextStyle(fontWeight: FontWeight.bold)),
                              Text("Friends")
                            ],),
                              Column(children: [
                                Text("10",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Photos")
                              ],),
                              Column(children: [
                                Text("89",style: TextStyle(fontWeight: FontWeight.bold)),
                                Text("Comments")
                              ],),
                          ],),
                        ),
                        Text("Brian Mwanambulo, 20", style: TextStyle(fontSize: 25),),
                        Text("Lusaka, Zambia",style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 40,),
                        Container(
                            width: 250,
                            child: Column(
                              children: [
                                const Text("An artist of considerable range, Brian Mwanambulo is one o fthe best software dev...",style: TextStyle(color: Colors.blueGrey)),
                                TextButton(onPressed: (){}, child: Text("Show more")),
                              ],
                            )),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Album", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(onPressed: (){}, child: Text("View All"),),
                          ),
                          SizedBox(
                            height: 250,
                            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                                itemCount: 6,
                                itemBuilder: (ctx,index){
                              return Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.pink),

                                ),
                              );
                            }),
                          )
                      ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: CircleAvatar(
                radius: 70,
              ),
            ),
          ],
        ),
      ),
    ],

    );
  }
}
