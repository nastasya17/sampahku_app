import 'package:flutter/material.dart';

class JadwalSampah extends StatelessWidget {
  const JadwalSampah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'https://bit.ly/38AlQaQ',
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Jadwal Buang Sampah",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Ternyata buang sampah juga ada jadwalnya lho! Mulai tanggal 12 Juni 2020 lalu, sudah mulai diberlakukan sanksi tegas terhadap pelanggar jadwal pembuangan sampah. Sanksi yang diberikan berupa ancaman kurungan hingga denda puluhan juta rupiah.\n\nJika ada yang melanggar atau tidak mematuhi jadwwal tersebut, Bupati mengatakan akan ada ketentuan pidana berupa ancaman kurungan paling lama 3(tiga) bulan atau denda paling banyak Rp 50.000.000,- (lima puluh juta rupiah).',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomRight,
                  child: FavoriteButton(),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.7),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
        size: 30,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
