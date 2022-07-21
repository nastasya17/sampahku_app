class ModelJenissampah {
  String title;
  String imageAsset;
  String description;

  ModelJenissampah({
    required this.title,
    required this.imageAsset,
    required this.description,
  });
}

var modelJenissampahList = [
  ModelJenissampah(
    title: '1. Sampah Alami atau Sampah Organik',
    imageAsset: 'assets/images/organik.jpg',
    description:
        'Sampah organik merupakan jenis sampah yang berasal dari alam dan bisa membusuk.\n\nSampah organik ini dapat dimanfaatkan kembali menjadi pupuk yang menyuburkan tanaman. ',
  ),
  ModelJenissampah(
    title: '2. Sampah tidak alami atau sampah anorganik',
    imageAsset: 'assets/images/anorganik.jpg',
    description:
        'Sampah anorganik merupakan jenis sampah yang tidak membusuk, dan sulit terurai di tanah.\n\nContoh sampah anorganik adalah kertas, plastik, kaleng, dan sebagainya.\n\nSampah anorganik juga bisa didaur ulang menjadi berbagai benda yang bisa digunakan kembali.',
  ),
  ModelJenissampah(
    title: '3. Sampah berbahaya atau sampah beracun',
    imageAsset: 'assets/images/b3.jpg',
    description:
        'Sampah beracun adalah jenis sampah yang berasal dari limbah pabrik atau rumah sakit.\n\nSampah beracun mengandung bahan kimia, sehingga jika dibuang sembarangan dapat meracuni ekosistem lingkungan.',
  ),

];
