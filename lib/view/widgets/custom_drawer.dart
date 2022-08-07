import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 3.0,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/avatar.jpg'),
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Cuong Nguyen",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              )
            ],
          ),
          const Divider(
            color: Colors.black,
          ),
          const ListTile(
            leading: Icon(Icons.home),
            title: Text(
              "Home",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.newspaper),
            title: Text(
              "Newest",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.search),
            title: Text(
              "Search",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              "Notification",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
