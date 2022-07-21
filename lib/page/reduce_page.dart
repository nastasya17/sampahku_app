import 'package:flutter/material.dart';

class ReducePage extends StatelessWidget {
  const ReducePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:const EdgeInsets.all(15),
              child: Image.network('https://aetra.co.id/images/sahabat_aetra/6Runtukkurangisampahkita.jpg',
              fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                "Reduce berarti 'mengurangi sampah'. Maksudnya, langkah ini mengajak kita untuk mengurangi penggunaan produk yang nantinya akan menjadi sampah.\n\nTerutama produk yang membutuhkan waktu sangat lama untuk bisa terurai secara alami di alam, misalnya produk berbahan plastik.\n\nReduce ini adalah langkah yang menjadi prioritas utama. Jadi, penggunaan barang yang sulit atau bahkan enggak bisa didaur ulang kembali sebaiknya dikurangi. Dengan begitu timbunan sampah yang berpotensi merusak lingkungan akan berkurang.\n\nContoh penerapan langkah ini adalah dengan membawa botol minum atau peralatan makan sendiri seperti sendok dan garpu saat bepergian sehingga bisa mengurangi sampah botol dan alat makan sekali pakai.",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
