import 'package:flutter/material.dart';
import 'package:proyek_akhir/mhs_data.dart';

class DetailScreen extends StatelessWidget {
  final MhsData data;

  const DetailScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Stack(
              children: <Widget>[
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                icon: const Icon(Icons.arrow_back),
                                color: Colors.white,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              )),
                          const FavoriteButton()
                        ]),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(50, 50, 50, 0),
              child: Image.asset(
                data.imageAsset,
                width: 300.0,
                height: 200.0,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Text(
                data.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: Text(
                data.biodata,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ),
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
      ),
      onPressed: () {
        isFavorite = !isFavorite;
      },
    );
  }
}
