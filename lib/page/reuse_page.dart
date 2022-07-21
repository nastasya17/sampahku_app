import 'package:flutter/material.dart';

class ReusePage extends StatelessWidget {
  const ReusePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Image.network(
                'https://tunashijau.id/wp-content/uploads/2020/03/reuseth-2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                "Reuse berarti 'menggunakan kembali'. Langkah ini mengajak kita untuk menggunakan kembali produk yang sudah dipakai.\n\nDengan begitu, enggak banyak sampah ditimbulkan akibat produk-produk sekali pakai.\n\nMisalnya, kita menggunakan kembali bekas botol kemasan air minum sebagai pot tanaman. Atau kita gunakan bekas kaleng biskuit untuk menyimpan uang koin atau pernak-pernik lainnya. Kita juga bisa mengisi ulang botol bekas sabun mandi dengan membeli kemasan refill.",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
