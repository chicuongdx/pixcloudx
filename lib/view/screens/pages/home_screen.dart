import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pixcloudx/view/widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PixCloudx'),
        bottom: TabBar(
          tabs: [
            Tab(
              text: 'Illustrations',
              icon: Icon(Icons.image),
            ),
            Tab(
              text: 'Novels',
              icon: Icon(Icons.book),
            ),
            Tab(
              text: 'Manga',
              icon: Icon(Icons.bookmark),
            )
          ],
          controller: _tabController,
          labelColor: Colors.black26,
          labelStyle:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          unselectedLabelStyle: const TextStyle(fontSize: 18),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      drawer: CustomDrawer(),
      body: TabBarView(
        children: [
          Text("1"),
          Text("2"),
          Text("3"),
        ],
        controller: _tabController,
      ),
    );
  }
}
