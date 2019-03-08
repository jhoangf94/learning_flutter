import 'package:flutter/material.dart';
import 'pagesSvc.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyTabs(),
      ),
    );

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabs'),
        bottom: TabBar(
          controller: tabController,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.gamepad)),
            Tab(icon: Icon(Icons.contacts))
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Icon(Icons.face,size: 100.0,),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("i'm the best"),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          MyCustomPage(Icons.home, "Soy el home"),
          MyCustomPage(Icons.gamepad, "Soy el game pad"),
          MyCustomPage(Icons.contacts, "Soy la pagina de contactos")
        ],
      )
    );
  }
}
