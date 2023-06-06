import 'package:flutter/material.dart';
import 'package:e_pop_ice/data.dart';

class ProdukDetail extends StatefulWidget {
  const ProdukDetail({
    Key? key,
    required this.produk,
  }) : super(key: key);

  final Produk produk;

  @override
  State<ProdukDetail> createState() => _ProdukDetailState();
}

class LoveButton extends StatefulWidget {
  const LoveButton({Key? key}) : super(key: key);

  @override
  _LoveButton createState() => _LoveButton();
}

class _LoveButton extends State<LoveButton> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isLove ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isLove = !isLove;
        });
      },
    );
  }
}

// ...

class _ProdukDetailState extends State<ProdukDetail> {
  int count = 1;

  void addCount() {
    count = count + 1;
    setState(() {});
  }

  void removeCount() {
    if (count != 0) {
      count = count - 1;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF212121),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          widget.produk.nama,
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          LoveButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.produk.nama,
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w700,
              ),
            ),
            Center(
              child: Hero(
                tag: widget.produk.gambar,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.produk.gambar),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.yellowAccent,
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    'Rp. ${widget.produk.harga}',
                    style: const TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    ' /${widget.produk.PCS}',
                    style: const TextStyle(
                      color: Color(0xFF212121),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.yellowAccent,
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.produk.deskripsi,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              alignment: Alignment.bottomCenter,
              color: Colors.yellowAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    flex: 1,
                    child: IconButton(
                      onPressed: removeCount,
                      icon: const Icon(
                        Icons.remove_circle_outline,
                        color: Color(0xFF212121),
                        size: 30,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      count.toString(),
                      style: const TextStyle(
                        color: Color(0xFF212121),
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: IconButton(
                      onPressed: addCount,
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: Color(0xFF212121),
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Color(0xFF212121),
                    ),
                    child: const Center(
                      child: Text(
                        "Pesan",
                        style: TextStyle(
                          color: Color(0xFFFFFDE7),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
