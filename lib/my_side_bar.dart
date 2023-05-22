import 'package:flutter/material.dart';

class MySideBar extends StatelessWidget {
  const MySideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.lightBlueAccent,
            ],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.lightBlueAccent,
                    Colors.black,
                  ])),
              accountName: const Text("Sultonov Azizbek"),
              accountEmail: const Text("+998912402164"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/images.jpeg",
                    fit: BoxFit.cover,
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.perm_identity_outlined,
                size: 30,
                color: Colors.white30,
              ),
              title: const Text(
                "Account",
                style: TextStyle(color: Colors.white30),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                size: 30,
                color: Colors.white30,
              ),
              title: const Text(
                "Settings",
                style: TextStyle(color: Colors.white30),
              ),
              onTap: () {},
            ),
            const Divider(
              color: Colors.white30,
            ),
            ListTile(
              trailing: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.deepPurpleAccent),
                child: const Text(
                  "99+",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              leading: const Icon(
                Icons.notifications_active_outlined,
                size: 30,
                color: Colors.white30,
              ),
              title: const Text(
                "Notifications",
                style: TextStyle(color: Colors.white30),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
