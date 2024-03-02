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
        body:  Column(
          children: [

          ],
        ),
      ),
    );
  }
}







