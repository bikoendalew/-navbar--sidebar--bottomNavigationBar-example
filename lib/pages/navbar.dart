import 'package:flutter/material.dart';

import 'page1.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
     child:ListView(
       padding: EdgeInsets.zero,
      children:  [
        UserAccountsDrawerHeader(
          accountName: Text('someone'),
          accountEmail: Text('example@gmail.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                'https://duckduckgo.com/?q=icon%20image&iax=images&ia=images&iai=http://cdn.onlinewebfonts.com/svg/img_155117.png&atb=v349-1',
                fit: BoxFit.cover,
                width: 90,
                height: 90,
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.pink,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage('https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home_filled),
          title: Text('Favorites'),
          onTap: () {
          }
        ),
        ListTile(
          leading:const Icon(Icons.person),
          title:const Text('Friends'),
          onTap: () => null,
        ),
        const Divider(),
         ListTile(
          leading: const Icon(Icons.share),
          title: const Text('Share'),
          onTap: () {},
        ),
        ListTile(
          leading:const Icon(Icons.notifications),
          title:const Text('Request'),
          onTap: () => null,
          trailing: ClipOval(
            child: Container(
              color: Colors.red,
              width: 20,
              height: 20,
              child: const Center(
                child: Text(
                  '8',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
     )
    );
  }
}
