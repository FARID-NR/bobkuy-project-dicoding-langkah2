class Produk {
  final String nama;
  final String harga;
  final String PCS;
  final String gambar;
  final String deskripsi;

  Produk(
    this.nama,
    this.harga,
    this.PCS,
    this.gambar,
    this.deskripsi,
  );
}

List<Produk> getAllData() {
  return [
    Produk(
      'Pisang',
      '20.000',
      '1 PCS',
      'gambar/Pisang.jpg',
      'Jus Pisang adalah Minuman yang mengadung berbagai manfaat. Salah satunya berperan untuk membantu tubuh agar tetap Fit dalam ber aktivitas',
    ),
    Produk(
      'Durian',
      '22.000',
      '1 PCS',
      'gambar/durian1.jpg',
      'Jus Durian adalah Minuman yang mengadung berbagai manfaat. Salah satunya berperan untuk membantu tubuh agar tetap Fit dalam ber aktivitas',
    ),
    Produk(
      'Jagung',
      '19.000',
      '1 PCS',
      'gambar/jagung.jpg',
      'Jus Jagung adalah Minuman yang mengadung berbagai manfaat. Salah satunya berperan untuk membantu tubuh agar tetap Fit dalam ber aktivitas',
    ),
    Produk(
      'Paket 1',
      '30.000',
      '2 PCS',
      'gambar/paket1.jpg',
      'Paket 1 adalah Minuman dengan tema pasangan. Membuat kamu dan gebetan menjadi lebih asik dan segar.',
    ),
    Produk(
      'Paket Jaya',
      '55.000',
      '3 PCS',
      'gambar/paket2.jpg',
      'Paket Jaya adalah Minuman dengan tema Sahabat. Membuat kamu dan Sahabat kamu menjadi lebih asik dan segar.',
    ),
    Produk(
      'Paket Keluarga',
      '84.500',
      '5 PCS',
      'gambar/paket3.jpg',
      'Paket Keluarga adalah Minuman dengan tema pasangan. Membuat kamu dan seluruh keluarga menjadi lebih asik dan segar.',
    ),
  ];
}
