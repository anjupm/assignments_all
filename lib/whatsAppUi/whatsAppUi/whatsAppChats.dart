import 'package:assignments/whatsAppUi/whatsAppUi/statusUi.dart';
import 'package:flutter/material.dart';
import 'callsUi.dart';
import 'chatsUi.dart';

class WhatsAppChats extends StatelessWidget {
  const WhatsAppChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade800,
          title: const Text(
            "WhatsApp",
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('New group')),
                const PopupMenuItem(child: Text('New broadcast')),
                const PopupMenuItem(child: Text('Linked devices')),
                const PopupMenuItem(child: Text('Starred messages')),
                const PopupMenuItem(child: Text('Payments')),
                const PopupMenuItem(child: Text('settings')),
              ];
            })
          ],
          bottom: TabBar(
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .0,
                child: const Tab(
                  icon: Icon(Icons.people),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Tab(
                  text: "Chats",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Tab(text: "Status"),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Tab(text: "Calls"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Community"),
            ),
            Chats(),
            Status(),
            CallsUi(),
          ],
        ),
      ),
    );
  }
}
