import 'package:flutter/material.dart';

import 'main.dart';

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("A N G E L - 6 9",
                style: TextStyle(color: Colors.black)),
            accountEmail: Text("angel@gmail.com",
             style: TextStyle(color: Colors.black)),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://i.etsystatic.com/11322708/r/il/ad5a4d/1576816648/il_570xN.1576816648_rwe3.jpg',
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/originals/c3/76/47/c37647d3cd724c0dc86a7db7627eaba5.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: Colors.black,
            child: new ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Peliculas",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyMovieApp()),
                );
              },
            ),
          ),
          Ink(
            color: Colors.black,
            child: new ListTile(
              leading: Icon(Icons.contacts),
              title: Text(
                "Populares",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                ////////////////////
              },
            ),
          ),
          Ink(
            color: Colors.black,
            child: new ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "Anime",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Ink(
            color: Colors.black,
            child: new ListTile(
              leading: Icon(Icons.save),
              title: Text(
                "Estrenos",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
          ),
          Ink(
            color: Colors.red,
            child: new ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                "Salir",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () => null,
            ),
          ),
        ],
      ),
    );
  }
}
