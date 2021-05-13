import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_wahyu/models/penjualan.dart';
import 'package:flutter_application_wahyu/ui/inputpenjualan.dart';
// ignore: unused_import
import './menuDrawer.dart' as menuDrawer;
import 'produk.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent[700],
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text('Beranda'),
        ]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext) => produk()));
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext) => InputPenjualan()));
            },
          )
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Daniel Sihite"),
              accountEmail: new Text("sihitedaniel710.com"),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: new NetworkImage(
                        'https://www.shihoriobata.com/wp-content/uploads/2020/12/moon-and-clouds-aesthetic-background-phone2-576x1024.jpg?x45601'),
                    fit: BoxFit.cover),
              ),
            ),
            new ListTile(
              title: new Text('Notifications'),
              trailing: new Icon(Icons.notifications_none),
            ),
            new ListTile(
              title: new Text('Wishlist'),
              trailing: new Icon(Icons.bookmark_border),
            ),
            new ListTile(
              title: new Text('Akun'),
              trailing: new Icon(Icons.verified_user),
            ),
            Divider(
              height: 2,
            ),
            new ListTile(
              title: new Text('About'),
              trailing: new Icon(Icons.info),
            ),
            new ListTile(
              title: new Text('Setting'),
              trailing: new Icon(Icons.settings),
            ),
          ],
        ),
      ),
//seluruh boody dibungkus colomn
      body: new ListView(
        children: <Widget>[
          Image(image: AssetImage("assets/appimage/mi.png")),
// setiap bagian pada body dipisahkan container
          Container(
            height: 150,
            color: Colors.orangeAccent[700],
            padding: const EdgeInsets.all(5),
            //untuk membuat tampilan secara horisontal maka digunakan row
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aplikasi Penjualan LCD Xiaomi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Pesan Sekarang',
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.local_offer,
                  color: Colors.red[500],
                ),
                Text(' Up 15%'),
              ],
            ),
          ),
          //setiap bagian pada body dipisahkan container
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),
            //untuk membuat tampilan secara vertikal maka gunakan colomn
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //untuk membuat tampilan vertikal maka digunakan colomn
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.grid_on, color: Colors.red),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Pilih Pemesanan",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.share, color: Colors.red),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Bagikan",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.near_me, color: Colors.red),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Lokasi",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.call, color: Colors.red),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Customer Service",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orange, Colors.orangeAccent],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rekomendasi LCD',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Diskon up to 20%',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Kualitas Terbaik'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
