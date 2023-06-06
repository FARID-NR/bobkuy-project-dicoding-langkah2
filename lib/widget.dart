import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:e_pop_ice/data.dart';
import 'package:e_pop_ice/produk.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.produk}) : super(key: key);
  final Produk produk;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProdukDetail(
            produk: produk,
          );
        }));
      },
      child: Card(
        elevation: 2,
        shadowColor: Colors.yellowAccent,
        color: Colors.grey[900],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Hero(
                tag: produk.gambar,
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(produk.gambar),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Rp ${produk.harga}',
              style: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              produk.nama,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFFFDE7),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              produk.PCS,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFFDE7),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Divider(
              height: 4,
              color: Colors.green,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: const [
                    Icon(
                      Icons.add_shopping_cart,
                      size: 20,
                      color: Color(0xFFFFFDE7),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Beli",
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 8,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.remove_circle_outline,
                      size: 18,
                      color: Colors.yellowAccent,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        '0',
                        style: TextStyle(color: Color(0xFFFFFDE7)),
                      ),
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      size: 18,
                      color: Colors.yellowAccent,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
