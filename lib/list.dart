import 'package:flutter/material.dart';
import 'package:sampahku_app/page/3r.dart';
import 'package:sampahku_app/page/jadwal_sampah.dart';
import 'page/jadwal_sampah.dart';
import 'page/memilah_sampah.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          Container(
            child: Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Seberapa jauh pengetahuanmu tentang sampah?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Divider(
                //   height: 1,
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const JadwalSampah();
                  },
                ),
              );
            },
            title: const Text(
              'Sudah Buang Sampah Hari Ini?',
              style: TextStyle(fontSize: 13),
            ),
            subtitle: const Text(
              'Eits, buang sampah ada jadwalnya juga lho!',
              style: TextStyle(fontSize: 12),
            ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/image1.png'),
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          const SizedBox(height: 20),
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MemilahSampah();
                  },
                ),
              );
            },
            title: const Text(
              'Memilah Sampah?',
              style: TextStyle(fontSize: 13),
            ),
            subtitle: const Text(
              'Yuk, cari tahu cara memilah sampah dengan baik dan benar!',
              style: TextStyle(fontSize: 12),
            ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/image2.png'),
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
          const SizedBox(height: 20),
          ListTile(
            contentPadding: const EdgeInsets.all(10),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const DaurUlang();
                  },
                ),
              );
            },
            title: const Text(
              '3 R',
              style: TextStyle(fontSize: 13),
            ),
            subtitle: const Text(
              'Sudah tau Reduce, Reuse, Recycle?',
              style: TextStyle(fontSize: 12),
            ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/image4.png'),
            ),
            trailing: const Icon(Icons.navigate_next),
          ),
          const Divider(height: 1),
        ],
      ),
    );
  }
}
