import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(' Whatsapp ' , style:  TextStyle( color: Colors.white),),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt , color: Colors.white),
                ),
                Tab(
                  child: Text(' Chats ', style: TextStyle(color: Colors.white),)
                ),
                Tab(
                    child: Text(' Updates ',style: TextStyle(color: Colors.white))
                ),
                Tab(
                  child: Text(' Calls ',style: TextStyle(color: Colors.white)
                )
                )
              ]
          ),
          actions: [
            const  Icon(Icons.search),
            PopupMenuButton(
                icon : const Icon(Icons.more_vert_outlined),
                itemBuilder: (context )=>[
                 const  PopupMenuItem(
                      child: Text('New group'),
                  ),
                  const  PopupMenuItem(
                    child: Text(' New broadcast'),
                  ),
                  const  PopupMenuItem(
                    child: Text(' Linked devices'),
                  ),
                  const  PopupMenuItem(
                    child: Text('Settings'),
                  )
                ]
            )
          ],
        ),
        body:   TabBarView(
            children: [
              const Center(child: Text('Camera')),
              ListView.builder(
                  itemBuilder: (context, index){
                    return  const ListTile(
                      leading:  CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/10273454/pexels-photo-10273454.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title:  Text('Hammad Ahmed'),
                      subtitle:  Text('Where are you?'),
                      trailing:  Text('10:00 pm '),
                    );
                  }
              ),
             const Center(child: Text('Updates')),

              ListView.builder(
                  itemBuilder: (context, index){
                    return  const ListTile(
                      leading:  CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/10273454/pexels-photo-10273454.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                      title:  Text('Hammad Ahmed'),
                      subtitle:  Align(
                        alignment: Alignment.centerRight,
                        child:  Icon(Icons.call),
                      ),
                      trailing:  Text('10:00 pm '),
                    );
                  }
              ),

            ]
        ),

      ),
    );
  }
}







