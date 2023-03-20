import 'package:flutter/material.dart';
import 'main_page.dart';
import 'identity.dart';

class DetailPage extends StatefulWidget {
  // final String pesanTerima;
  final Identity identitasTerima;

  const DetailPage({
    Key? key,
    // required this.pesanTerima,
    required this.identitasTerima,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Detail Page ${widget.identitasTerima.name}"),
            // automaticallyImplyLeading: false,
          ),
          body: Center(
              child: Column(
                children: [
                  Text("${widget.identitasTerima.name}"),
                  Image.network(
                    widget.identitasTerima.fotoUrls,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Text("Username: ${widget.identitasTerima.username}"),
                  Text("email 1: ${widget.identitasTerima.email[0]}"),
                  Text("email 2: ${widget.identitasTerima.email[1]}"),
                  Text("Company Name: ${widget.identitasTerima.company[0][0]}"),
                  Text("About: ${widget.identitasTerima.company[0][1]}"),
                ],
              )
          )
      ),
    );
  }
}
