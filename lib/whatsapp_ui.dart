import 'package:flutter/material.dart';

class WHATSAPP_UI extends StatefulWidget {
  const WHATSAPP_UI({super.key});

  @override
  State<WHATSAPP_UI> createState() => _WHATSAPP_UIState();
}

class _WHATSAPP_UIState extends State<WHATSAPP_UI> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("New Group"),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("New Group"),
                          content: Text("New Group Menu Item Pressed"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                PopupMenuItem(
                  child: Text("New Chat"),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("New Chat"),
                          content: Text("New Chat Menu Item Pressed"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Settings"),
                          content: Text("Settings Menu Item Pressed"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                PopupMenuItem(
                  child: Text("Logout"),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Logout"),
                          content: Text("Logout Menu Item Pressed"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("OK"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ],
          title: Text("Whatsapp"),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.white,
            unselectedLabelStyle: TextStyle(color: Colors.white),
            labelColor: Colors.white,
            indicatorWeight: 3,
            tabs: [Text("Chats"), Text("Calls"), Text("Status")],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Khubaib Husain"),
                  subtitle: Text("OK, Done"),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.green,
                    maxRadius: 10,
                    child: Icon(Icons.plus_one, color: Colors.green),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Ali Ameen"),
              subtitle: Text("Today, 3:53 PM"),
              trailing: Icon(Icons.call, color: Colors.grey),
            ),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    "Recent Updates",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.green),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMjrz3KfzIjGQ9-KYXilZgy2vPYHcL5b5iF_Cg0VhQQlkEYzz_qOwgumP6RK8J1fd26gosqExgBnTJ4itmjkE9kVxgB_sbT0FQyg6MkfbK&s=10",
                      ),
                    ),
                  ),
                  title: Text("Rohit Sharma"),
                  subtitle: Text("6:35 AM"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    "Viewed Updates",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm8d40UoejmQGMpKd7mlq8MRVAyYUBES5_cSMtSDRC_Fe_Oi7HUVuSm91I5rS0KV_O79qwzcomrM0JQJry70JR6m3yiHSE2L7WX2vxNn9mkw&s=10",
                    ),
                  ),
                  title: Text("Virat Kohli"),
                  subtitle: Text("7:25 PM"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
