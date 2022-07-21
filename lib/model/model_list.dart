class ModelListpage {
  String title;
  String caption;
  String imageAsset;

  ModelListpage({
    required this.title,
    required this.caption,
    required this.imageAsset,
  });
}

var modelListpageList = [
  ModelListpage(
    title: 'Sudah Buang Sampah Hari Ini?',
    caption:
        'Eits, buang sampah ada jadwalnya juga lho! Yuk, cek jadwal buang sampah!',
    imageAsset: 'assets/images/image1.png',
  ),
  ModelListpage(
    title: 'Memilah Sampah',
    caption: 'Yuk, cari tahu cara memilah sampah dengan baik dan benar.',
    imageAsset: 'assets/images/image2.png',
  ),
  ModelListpage(
    title: 'Ketahui Jenis Sampah',
    caption: 'Jenis sampah organik, anorganik, sampah kimia, yang mana aja ya?',
    imageAsset: 'assets/images/image3.png',
  ),
  ModelListpage(
    title: '3R',
    caption: 'Sudah tahu apa itu Reduce, Reuse Recycle?',
    imageAsset: 'assets/images/image4.png',
  ),
];
