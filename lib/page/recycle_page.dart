import 'package:flutter/material.dart';

class RecyclePage extends StatelessWidget {
  const RecyclePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Image.network(
                'https://bisnisukm.com/uploads/2014/11/daur-ulang-sampah-plastik.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                "Recycle berarti 'mendaur ulang'. Langkah ini bisa disebut sebagai langkah memberikan kesempatan kedua untuk berbagai produk bekas agar bisa menjadi produk baru.\n\nDengan demikian, produk baru dari hasil daur ulang tersebut bisa dimanfaatkan kembali dan enggak hanya menjadi tumpukan sampah yang mencemari lingkungan.\n\nProduk yang didaur ulang biasanya adalah limbah dengan bahan yang enggak bisa langsung digunakan lagi. Contohnya adalah mendaur ulang plastik bekas kemasan makanan atau minuman.",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
